package com.example.character_api.controller;

import com.example.character_api.model.PokemonCharacter;
import com.example.character_api.service.PokemonCharacterService;
import jakarta.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

@Controller
public class PokemonCharacterController {

    private final PokemonCharacterService service;

    public PokemonCharacterController(PokemonCharacterService service) {
        this.service = service;
    }

    // 1. Home Page: Fetch all characters from the database and send them to index.ftlh
    @GetMapping("/")
    public String homePage(Model model) {
        model.addAttribute("characters", service.getAllCharacters(null, null));
        return "index"; // Matches src/main/resources/templates/index.ftlh
    }

    // 2. About Page
    @GetMapping("/about")
    public String aboutPage() {
        return "about"; // Matches about.ftlh
    }

    // 3. Detail Page: Fetch a specific character by ID (e.g., /detail?id=1)
    @GetMapping("/detail")
    public String detailPage(@RequestParam(required = false) Long id, Model model) {
        if (id != null) {
            model.addAttribute("character", service.getCharacterById(id));
        }
        return "detail"; // Matches detail.ftlh
    }

    // 4. Form Page: Display the "Add Character" form
    @GetMapping("/characters/new")
    public String newCharacterForm(Model model) {
        model.addAttribute("pokemonCharacter", new PokemonCharacter());
        return "new-character-form"; // Matches new-character-form.ftlh
    }

    // 5. Form Submission: Handle POST request from the form, save to DB, and redirect home
    @PostMapping("/characters")
    public String addCharacterFromForm(@Valid @ModelAttribute PokemonCharacter character, BindingResult result, Model model) {
        if (result.hasErrors()) {
            return "new-character-form"; // Return to form if validation fails
        }
        service.addCharacter(character);
        return "redirect:/"; // Redirect back to home page to see the new character in the grid!
    }
}