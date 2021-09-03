//
//  GameDetailsViewController.swift
//  MatchesGame
//
//  Created by Rozalia Rodichev on 8/30/21.
//

import UIKit

class GameDetailsViewController: UIViewController {
    
    // MARK: - Lifecycles

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        updateView()
    }
    
    
    // MARK: - Properties
    
    var game: GameState?
    
    
    // MARK: - Outlets
    
    @IBOutlet weak var gameImageView: UIImageView!
    @IBOutlet weak var gameDescriptionText: UILabel!
    
    
    // MARK: - Helper Functions
    
    func updateView() {
        guard let game = game,
              //let gameImageView = gameImageView,
              let gameDescriptionText = gameDescriptionText else { return }
        
        //gameImageView.image = game.image
        gameDescriptionText.text = game.gameDescription
    }

    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let destination = segue.destination as? GameViewController,
              segue.identifier == "toGamePresentationVC" else {
            return
        }
        destination.game = game
    }
}
