package com.vocera.rockpaperscissors.repository;

import com.vocera.rockpaperscissors.models.Game;
import org.springframework.data.jpa.repository.JpaRepository;

public interface GameRepository extends JpaRepository<Game, String> {
}