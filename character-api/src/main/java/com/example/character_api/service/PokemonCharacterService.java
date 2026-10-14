package com.example.character_api.service;

import com.example.character_api.model.PokemonCharacter;
import com.example.character_api.repository.PokemonCharacterRepository;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.web.server.ResponseStatusException;

import java.util.List;

@Service
public class PokemonCharacterService {

    private final PokemonCharacterRepository repository;

    PokemonCharacterService(PokemonCharacterRepository repository) {
        this.repository = repository;
    }

    public List<PokemonCharacter> getAllCharacters(String region, String name) {
        if (region != null && !region.isEmpty()) {
            return repository.findByRegionIgnoreCase(region);
        }
        if (name != null && !name.isEmpty()) {
            return repository.findByNameContainingIgnoreCase(name);
        }
        return repository.findAll();
    }

    public PokemonCharacter getCharacterById(Long id) {
        return repository.findById(id)
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Character not found with id: " + id));
    }

    public PokemonCharacter addCharacter(PokemonCharacter character) {
        return repository.save(character);
    }

    public PokemonCharacter updateCharacter(Long id, PokemonCharacter updatedCharacter) {
        PokemonCharacter existing = getCharacterById(id); // Throws 404 if not found
        
        existing.setName(updatedCharacter.getName());
        existing.setDescription(updatedCharacter.getDescription());
        existing.setRegion(updatedCharacter.getRegion());
        existing.setType(updatedCharacter.getType());
        existing.setGeneration(updatedCharacter.getGeneration());
        existing.setLegendary(updatedCharacter.getLegendary());
        
        return repository.save(existing);
    }

    public void deleteCharacter(Long id) {
        PokemonCharacter existing = getCharacterById(id); // Throws 404 if not found
        repository.delete(existing);
    }
}
