package com.example.character_api.repository;

import com.example.character_api.model.PokemonCharacter;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
   
@Repository
public interface PokemonCharacterRepository extends JpaRepository<PokemonCharacter, Long> {
    
    // Filter by region (category)
    List<PokemonCharacter> findByRegionIgnoreCase(String region);

    // Search by name (partial, case-insensitive)
    List<PokemonCharacter> findByNameContainingIgnoreCase(String name);
}