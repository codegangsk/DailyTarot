//
//  CardImageManager.swift
//  DailyTarot
//
//  Created by Sophie Kim on 2021/08/30.
//

import Foundation
import SpriteKit

enum CardName : Int{
    case first,
         second,
         third,
         fourth,
         fifth,
         sixth,
         seventh,
         eighth,
         ninth,
         tenth
}

public class CardImageManager : SKSpriteNode {
    let cardName : CardName
    let frontTexture : SKTexture
    var cards = CardRepository.init()
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(cardName : CardName) {
        self.cardName = cardName
        
        switch cardName {
        case .first:
            frontTexture = SKTexture(imageNamed: (cards.cards.cards?[0].name_short)!)
            super.init(texture: frontTexture, color: .clear, size: frontTexture.size())
     
        case .second:
            frontTexture = SKTexture(imageNamed: (cards.cards.cards?[1].name_short)!)
            super.init(texture: frontTexture, color: .clear, size: frontTexture.size())
  
        case .third:
            frontTexture = SKTexture(imageNamed: (cards.cards.cards?[2].name_short)!)
            super.init(texture: frontTexture, color: .clear, size: frontTexture.size())
        
        case .fourth:
            frontTexture = SKTexture(imageNamed: (cards.cards.cards?[3].name_short)!)
            super.init(texture: frontTexture, color: .clear, size: frontTexture.size())
 
        case .fifth:
            frontTexture = SKTexture(imageNamed: (cards.cards.cards?[4].name_short)!)
            super.init(texture: frontTexture, color: .clear, size: frontTexture.size())
    
        case .sixth:
            frontTexture = SKTexture(imageNamed: (cards.cards.cards?[5].name_short)!)
            super.init(texture: frontTexture, color: .clear, size: frontTexture.size())
        
        case .seventh:
            frontTexture = SKTexture(imageNamed: (cards.cards.cards?[6].name_short)!)
            super.init(texture: frontTexture, color: .clear, size: frontTexture.size())
    
        case .eighth:
            frontTexture = SKTexture(imageNamed: (cards.cards.cards?[7].name_short)!)
            super.init(texture: frontTexture, color: .clear, size: frontTexture.size())
     
        case .ninth:
            frontTexture = SKTexture(imageNamed: (cards.cards.cards?[8].name_short)!)
            super.init(texture: frontTexture, color: .clear, size: frontTexture.size())
       
        case .tenth:
            frontTexture = SKTexture(imageNamed: (cards.cards.cards?[9].name_short)!)
            super.init(texture: frontTexture, color: .clear, size: frontTexture.size())
        }
    }
}
