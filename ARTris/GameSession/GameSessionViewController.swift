//
//  GameSessionViewController.swift
//  ARTris
//
//  Created by Grazietta Hof on 2017-11-13.
//  Copyright © 2017 ARTris. All rights reserved.
//

import UIKit

class GameSessionViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func newGameBtnPressed(_ sender: Any) {
        let gameViewController = storyboard?.instantiateViewController(withIdentifier: "gameViewController") as! GameViewController
        gameViewController.sessionId = "new_game"
        self.presentView(gameViewController)
    }
    
    @IBAction func findGameBtnPressed(_ sender: Any) {
        let gameListViewController = storyboard?.instantiateViewController(withIdentifier: "gameListViewController") as! GameListViewController
            Firebase.fetchGameSessions(completion: { array in
            gameListViewController.gameSessionsArray = array
            self.presentView(gameListViewController)
        })
    }
}
