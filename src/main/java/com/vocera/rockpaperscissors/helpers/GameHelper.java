package com.vocera.rockpaperscissors.helpers;

import com.vocera.rockpaperscissors.models.Move;

import java.util.Random;

public class GameHelper {

    public static String generateToken() {
        int leftLimit = 97;
        int rightLimit = 122;
        int targetStringLength = 10;
        Random random = new Random();
        StringBuilder builder = new StringBuilder(targetStringLength);

        for(int i = 0; i < targetStringLength; i++) {
            int randomLimitedInt = leftLimit + (int)(random.nextFloat() * (rightLimit - leftLimit + 1));
            builder.append((char) randomLimitedInt);
        }

        return builder.toString();
    }

    public static String getWinner(Move userMove, Move serverMove) {

        if(userMove == Move.ROCK && serverMove == Move.SCISSORS)
            return "USER";
        else if(serverMove == Move.ROCK && userMove == Move.SCISSORS)
            return "SERVER";

        if(userMove == Move.PAPER && serverMove == Move.ROCK)
            return "USER";
        else if(serverMove == Move.PAPER && userMove == Move.ROCK)
            return "SERVER";

        if(userMove == Move.SCISSORS && serverMove == Move.PAPER)
            return "USER";
        else if(serverMove == Move.SCISSORS && userMove == Move.PAPER)
            return "SERVER";

        return "TIE";
    }

    public static Move generateServerMove() {
        return Move.values()[new Random().nextInt(Move.values().length)];
    }

    public static Move generateServerMove(Move userMove) {
        switch (userMove) {
            case ROCK: return Move.PAPER;
            case SCISSORS: return Move.ROCK;
            case PAPER: return Move.SCISSORS;
        }
        return Move.ROCK;
    }

}
