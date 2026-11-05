package com.example.character_api.controller;

import com.example.character_api.model.PokemonCharacter;
import com.example.character_api.service.PokemonCharacterService;
import jakarta.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

@Controller
public class WebController {

    private final PokemonCharacterService service;

    public WebController(PokemonCharacterService service) {
        this.service = service;
    }

    // 1. Home / Gallery Page (loads index.ftlh)
    @GetMapping("/")
    public String homePage(Model model) {
        model.addAttribute("characters", service.getAllCharacters(null, null));
        return "index";
    }

    // 2. About Page (loads about.ftlh)
    @GetMapping("/about")
    public String aboutPage() {
        return "about";
    }

    // 3. Detail Page (loads detail.ftlh using path variable)
    @GetMapping("/characters/{id}")
    public String detailPage(@PathVariable Long id, Model model) {
        PokemonCharacter character = service.getCharacterById(id);
        model.addAttribute("character", character);
        return "detail";
    }

    // 4. Form Page (loads new-character-form.ftlh)
    @GetMapping("/characters/new")
    public String newCharacterForm(Model model) {
        model.addAttribute("pokemonCharacter", new PokemonCharacter());
        return "new-character-form";
    }

    // 5. Form Submission (saves to DB and redirects to home gallery)
    @PostMapping("/characters")
    public String addCharacterFromForm(@Valid @ModelAttribute PokemonCharacter character, BindingResult result) {
        if (result.hasErrors()) {
            return "new-character-form";
        }
        service.addCharacter(character);
        return "redirect:/";
    }
}