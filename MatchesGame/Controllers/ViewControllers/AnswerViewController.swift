//
//  AnswerViewController.swift
//  MatchesGame
//
//  Created by Rozalia Rodichev on 8/30/21.
//

import UIKit

class AnswerViewController: UIViewController {
    
    // MARK: - Constants
    
    private enum Constants {
        static let sideMargin: CGFloat = 20.0
        static let stickWidth: CGFloat = 10.0
    }

    
    // MARK: - Lifecycles
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = #colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 0.6324404762)
        
        drawFinalState()

    }
    
    
    // MARK: - Properties
    
    var game: GameState?
    var stick: Stick?
    
    
    // MARK: - Helper Functions
    
    private func drawFinalState() {
        
        guard let finalStateRepresentation = game?.finalState else { return }
        
        let frame = self.view.frame
        let height = frame.height - topbarHeight
        let width = frame.width
        
        guard let maxX = game?.maxX else { return }
        guard let maxY = game?.maxY else { return }
        
        let squareWidth = width - 2 * Constants.sideMargin
        let totalStickWidth = CGFloat(maxX-1) * Constants.stickWidth
        let stickLength = (squareWidth - totalStickWidth) / CGFloat(maxX) + Constants.stickWidth
        let squareHeight = CGFloat(maxY) * stickLength - CGFloat(maxY - 1) * Constants.stickWidth
        let x = Constants.sideMargin
        let y = (height - squareHeight) / 2 + topbarHeight
        
        for stick in finalStateRepresentation.sticks {
            let start = stick.startPoint
            let startX = x + CGFloat(start.x) * stickLength - CGFloat(start.x) * Constants.stickWidth
            let startY = y + CGFloat(start.y) * stickLength - CGFloat(start.y) * Constants.stickWidth
            
            let view = UIView()
            view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            view.layer.cornerRadius = 19
            view.layer.masksToBounds = true
            view.frame = CGRect(x: startX, y: startY, width: stick.horizontal ? stickLength : Constants.stickWidth,
                                    height: stick.horizontal ? Constants.stickWidth : stickLength)
            self.view.addSubview(view)
        }
    }
}
