package com.example.character_api.controller;

import com.example.character_api.model.PokemonCharacter;
import com.example.character_api.service.PokemonCharacterService;
import jakarta.validation.Valid;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
    
import java.util.List;

@RestController
@RequestMapping("/api/characters")
public class PokemonCharacterController {

    private final PokemonCharacterService service;

    public PokemonCharacterController(PokemonCharacterService service) {
        this.service = service;
    }

    // Get all characters
    @GetMapping
    public ResponseEntity<List<PokemonCharacter>> getAllCharacters(
            @RequestParam(required = false) String region,
            @RequestParam(required = false) String name) {
        List<PokemonCharacter> characters = service.getAllCharacters(region, name);
        return new ResponseEntity<>(characters, HttpStatus.OK);
    }

    // Get one character by ID
    @GetMapping("/{id}")
    public ResponseEntity<PokemonCharacter> getCharacterById(@PathVariable Long id) {
        PokemonCharacter character = service.getCharacterById(id);
        return new ResponseEntity<>(character, HttpStatus.OK);
    }

    // Add a character
    @PostMapping
    public ResponseEntity<PokemonCharacter> addCharacter(@Valid @RequestBody PokemonCharacter character) {
        PokemonCharacter created = service.addCharacter(character);
        return new ResponseEntity<>(created, HttpStatus.CREATED);
    }

    // Update a character
    @PutMapping("/{id}")
    public ResponseEntity<PokemonCharacter> updateCharacter(@PathVariable Long id, @Valid @RequestBody PokemonCharacter character) {
        PokemonCharacter updated = service.updateCharacter(id, character);
        return new ResponseEntity<>(updated, HttpStatus.OK);
    }

    // Delete a character
    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteCharacter(@PathVariable Long id) {
        service.deleteCharacter(id);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }
}
