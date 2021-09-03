//
//  AnswerViewController.swift
//  MatchesGame
//
//  Created by Rozalia Rodichev on 8/30/21.
//

import UIKit

class AnswerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = #colorLiteral(red: 1, green: 0.9165547274, blue: 0.877078134, alpha: 1)
        
        drawFinalState()

    }
    
    private enum Constants {
        static let sideMargin: CGFloat = 20.0
        static let stickWidth: CGFloat = 10.0
    }
    
    // MARK: - Properties
    
    var game: GameState?
    var stick: Stick?
    
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
            view.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
            view.frame = CGRect(x: startX, y: startY, width: stick.horizontal ? stickLength : Constants.stickWidth,
                                    height: stick.horizontal ? Constants.stickWidth : stickLength)
            self.view.addSubview(view)
        }
    }

}
