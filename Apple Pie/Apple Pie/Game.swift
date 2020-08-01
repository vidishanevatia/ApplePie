//
//  Game.swift
//  Apple Pie
//
//  Created by Vidisha Nevatia on 03/05/20.
//  Copyright © 2020 Vidisha Nevatia. All rights reserved.
//

import Foundation

struct Game {
    var word: String
    var incorrectMovesRemaining: Int
    var guessedLetters: [Character]
    var formattedWord: String{
        var guessedWord = ""
        for letter in word{
            if guessedLetters.contains(letter)
            {
                guessedWord += "\(letter)"
            }
            else{
                guessedWord += "_"
            }
        }
        return guessedWord
    }


mutating func playerGuessed(letter: Character)
{
    guessedLetters.append(letter)
    if !word.contains(letter)
    {
        incorrectMovesRemaining -= 1
    }
}
}
