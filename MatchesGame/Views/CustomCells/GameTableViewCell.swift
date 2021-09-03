//
//  GameTableViewCell.swift
//  MatchesGame
//
//  Created by Rozalia Rodichev on 8/30/21.
//

import UIKit

protocol GameToggleDelegate: AnyObject {
    func toggleIsAccomplishedFor(game: GameState)
}

class GameTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    // MARK: - Outlets
    
    @IBOutlet weak var checkmarkButton: UIButton!
    
    
    // MARK: - Properties
    
    var game: GameState? {
        didSet {
            updateView()
        }
    }
    
    weak var delegate: GameToggleDelegate?
    
    
    // MARK: - Actions
    
    @IBAction func checkmarkButtonTapped(_ sender: Any) {
        guard let game = game else { return }
        
        delegate?.toggleIsAccomplishedFor(game: game)
    }
    
    
    // MARK: - Helper Functions
    
    func updateView() {
        guard let game = game else { return }
        
        let imageName = game.isAccomplished ? "checkmark.circle.fill" : "checkmark.circle"
        checkmarkButton.setImage(UIImage(named: imageName), for: .normal)
    }
}
