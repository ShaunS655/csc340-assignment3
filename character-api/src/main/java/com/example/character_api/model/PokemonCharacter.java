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

    // Additional Attribute 1
    @NotBlank(message = "Generation is required")
    private String generation;

    // Additional Attribute 2
    @NotNull(message = "Legendary status is required")
    private Boolean legendary;

    public PokemonCharacter() {}

    public PokemonCharacter(String name, String description, String region, String type, String generation, Boolean legendary) {
        this.name = name;
        this.description = description;
        this.region = region;
        this.type = type;
        this.generation = generation;
        this.legendary = legendary;
    }

    // Getters and Setters
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
}
