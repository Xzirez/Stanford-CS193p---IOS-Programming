//
//  MemoryGame.swift
//  MusicSearch
//
//  Created by Vetle Stubberud on 12/03/2021.
//

import Foundation


struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    func choose(card: Card){
        print("card chosen: \(card)")
    }
    
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent){
         cards = Array<Card>()
        for pairIndex in 0..<numberOfPairsOfCards {
            var content = cardContentFactory(pairIndex)
            cards.append(Card(isFaceUp: false, isMatched: false, content: content, id: pairIndex*2))
            cards.append(Card(isFaceUp: false, isMatched: false, content: content, id: pairIndex*2+1))

        }
    }
    
    
    struct Card: Identifiable{
        var isFaceUp: Bool
        var isMatched: Bool
        var content: CardContent
        var id: Int
    }
}
