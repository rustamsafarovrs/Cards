//
//  Card.swift
//  Cards
//
//  Created by Сафаров Рустам Далерович on 7/27/22.
//

import UIKit

enum CardType : CaseIterable {
    case circle
    case cross
    case square
    case fill
       
}

enum CardColor: CaseIterable {
case red
 case green
 case black
 case gray
 case brown
 case yellow
 case purple
 case orange
}

typealias Card = (type: CardType, color: CardColor)

