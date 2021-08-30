//
//  TarotScene.swift
//  DailyTarot
//
//  Created by Sophie Kim on 2021/08/30.
//

import Foundation
import SpriteKit

class TarotScene: SKScene {
    override func didMove(to view: SKView) {
        let bg = SKSpriteNode(imageNamed: "bg_blank")
        bg.anchorPoint = CGPoint.zero
        bg.position = CGPoint.zero
        addChild(bg)
    }
}
