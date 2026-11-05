package com.example.character_api.repository;

import com.example.character_api.model.PokemonCharacter;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PokemonCharacterRepository extends JpaRepository<PokemonCharacter, Long> {

    // These method names must match your model fields (region, name)
    List<PokemonCharacter> findByRegionIgnoreCase(String region);

    List<PokemonCharacter> findByNameContainingIgnoreCase(String name);

    List<PokemonCharacter> findByRegionIgnoreCaseAndNameContainingIgnoreCase(String region, String name);
}