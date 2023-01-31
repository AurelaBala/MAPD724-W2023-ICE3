//
//  GameViewController.swift
//  MAPD724-W2023-ICE-1A
//
//  Created by Aurela Bala on 2023-01-16.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController
{

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        //print(self.view.frame.size.width)
        //print(self.view.frame.size.height)
    
        if let scene = GKScene(fileNamed: "GameScene") {
            
           
            if let sceneNode = scene.rootNode as! GameScene?
            {
        
                sceneNode.scaleMode = .aspectFill
                
                if let view = self.view as! SKView?
                {
                    view.presentScene(sceneNode)
                    view.ignoresSiblingOrder = true
                    
                }
            }
        }
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask
    {
       
            return .portrait
    }

    override var prefersStatusBarHidden: Bool
    {
        return true
    }
}
