package com.example.character_api.controller;

import com.example.character_api.model.PokemonCharacter;
import com.example.character_api.service.PokemonCharacterService;
import jakarta.validation.Valid;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class WebController {

    private static final Logger logger = LoggerFactory.getLogger(WebController.class);

    private final PokemonCharacterService service;

    public WebController(PokemonCharacterService service) {
        this.service = service;
    }

    // 1. Home / Gallery Page (loads index.ftlh)
    @GetMapping("/")
    public String homePage(
            @RequestParam(required = false) String name,
            @RequestParam(required = false) String region,
            Model model) {
        
        logger.debug("Name received: '{}' | Region received: '{}'", name, region);

        List<PokemonCharacter> characters = service.getAllCharacters(region, name);
        
        model.addAttribute("characters", characters);
        model.addAttribute("name", name);       // Keeps name input populated
        model.addAttribute("region", region);   // Keeps region input populated
        
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

    @GetMapping("/characters/{id}/edit")
        public String editCharacterForm(@PathVariable Long id, Model model) {
            PokemonCharacter character = service.getCharacterById(id); // Throws 404 if unknown ID
            model.addAttribute("pokemonCharacter", character);
            return "new-character-form"; // Reuses your add form template
        }

    // POST: Receive updates, use service update method, and redirect to details
    @PostMapping("/characters/{id}")
        public String updateCharacter(
                @PathVariable Long id, 
                @Valid @ModelAttribute PokemonCharacter character, 
                BindingResult result) {
            if (result.hasErrors()) {
                return "new-character-form";
            }
            service.updateCharacter(id, character);
            return "redirect:/characters/" + id;
        }

    @PostMapping("/characters/{id}/delete")
        public String deleteCharacter(@PathVariable Long id) {
            service.deleteCharacter(id);
            return "redirect:/";
        }

}