//
//  ViewController.swift
//  DailyTarot
//
//  Created by Sophie Kim on 2021/08/30.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {
    let skView = SKView()

    override func viewDidLoad() {
        super.viewDidLoad()
        CardRepository.init()
        loadBackground()
    }
}

extension ViewController {
    func loadBackground() {
        let scene = TarotScene(size: CGSize(width: 1024, height: 768))
        self.view = skView
        
        skView.showsFPS = true
        skView.showsNodeCount = true
        skView.ignoresSiblingOrder = false
        scene.scaleMode = .aspectFill
        skView.presentScene(scene)
    }
}
