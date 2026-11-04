package com.example.character_api.model;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;

@Entity
@Table(name = "pokemon_characters")
public class PokemonCharacter {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long characterId;

    @NotBlank(message = "Name is required")
    private String name;

    @NotBlank(message = "Description is required")
    private String description;

    @NotBlank(message = "Region is required")
    private String region;

    @NotBlank(message = "Type is required")
    private String type;

    @NotBlank(message = "Generation is required")
    private String generation;

    @NotNull(message = "Legendary status is required")
    private Boolean legendary;

    // --- New fields for UI templates & detail view ---
    private String imageUrl;
    private String evolveFrom;
    private String evolution;
    private String biology;
    private String lore;
    private String gameAppearances;

    // Default Constructor
    public PokemonCharacter() {}

    // Parameterized Constructor
    public PokemonCharacter(String name, String description, String region, String type, String generation, Boolean legendary, 
                            String imageUrl, String evolveFrom, String evolution, String biology, String lore, String gameAppearances) {
        this.name = name;
        this.description = description;
        this.region = region;
        this.type = type;
        this.generation = generation;
        this.legendary = legendary;
        this.imageUrl = imageUrl;
        this.evolveFrom = evolveFrom;
        this.evolution = evolution;
        this.biology = biology;
        this.lore = lore;
        this.gameAppearances = gameAppearances;
    }

    // --- Getters and Setters ---

    public Long getCharacterId() { return characterId; }
    public void setCharacterId(Long characterId) { this.characterId = characterId; }

    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }

    public String getRegion() { return region; }
    public void setRegion(String region) { this.region = region; }

    public String getType() { return type; }
    public void setType(String type) { this.type = type; }

    public String getGeneration() { return generation; }
    public void setGeneration(String generation) { this.generation = generation; }

    public Boolean getLegendary() { return legendary; }
    public void setLegendary(Boolean legendary) { this.legendary = legendary; }

    public String getImageUrl() { return imageUrl; }
    public void setImageUrl(String imageUrl) { this.imageUrl = imageUrl; }

    public String getEvolveFrom() { return evolveFrom; }
    public void setEvolveFrom(String evolveFrom) { this.evolveFrom = evolveFrom; }

    public String getEvolution() { return evolution; }
    public void setEvolution(String evolution) { this.evolution = evolution; }

    public String getBiology() { return biology; }
    public void setBiology(String biology) { this.biology = biology; }

    public String getLore() { return lore; }
    public void setLore(String lore) { this.lore = lore; }

    public String getGameAppearances() { return gameAppearances; }
    public void setGameAppearances(String gameAppearances) { this.gameAppearances = gameAppearances; }
}