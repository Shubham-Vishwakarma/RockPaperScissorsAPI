package com.vocera.rockpaperscissors.repository;

import com.vocera.rockpaperscissors.models.GameStep;
import org.springframework.data.jpa.repository.JpaRepository;

public interface GameStepRepository extends JpaRepository<GameStep, Long> {
}