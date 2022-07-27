//
//  Gamr.swift
//  Cards
//
//  Created by Сафаров Рустам Далерович on 7/27/22.
//

import UIKit

class Game {
    var cardsCount = 0
    var cards = [Card]()
    
    func generateCards() {
        var cards = [Card]()
        for _ in 0...cardsCount {
            let randomElement = (type: CardType.allCases.randomElement()!, color: CardColor.allCases.randomElement()!)
            cards.append(randomElement)
        }
        self.cards = cards
    }
    
    func checkCards(_ first: Card, _ second: Card) -> Bool {
        if first == second {
            return true
        }
        return false
    }
}
