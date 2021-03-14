//
//  EmojiMemoryGame.swift
//  MusicSearch
//
//  Created by Vetle Stubberud on 12/03/2021.
//

import Foundation


class EmojiMemoryGame{
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
   
   static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["🌜","🌛","🌚"]
    return MemoryGame<String>(numberOfPairsOfCards: emojis.count) {pairIndex in return emojis[pairIndex]
            
        }

    }
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    
    func choose(card: MemoryGame<String>.Card){
        model.choose(card: card)
    }
}
