//
//  GameViewController.swift
//  MatchesGame
//
//  Created by Rozalia Rodichev on 8/30/21.
//

import UIKit

class GameViewController: UIViewController {

    private enum Constants {
        static let sideMargin: CGFloat = 20.0
        static let stickWidth: CGFloat = 10.0
    }
    
    // MARK: - Lifecycles
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = #colorLiteral(red: 1, green: 0.9165547274, blue: 0.877078134, alpha: 1)
        drawGame()
    }
    
    // MARK: - Properties
    
    var game: GameState?
    var stick: Stick?
    
    weak var delegate: GamePresentationViewControllerDelegate?
    
    // MARK: - Actions
    
    @IBAction func answerButtonTapped(_ sender: Any) {
        presentAnswerAlertController()
    }
    
    // MARK: - Helper Functions
    
    func presentAnswerAlertController() {
        let alertController = UIAlertController(title: "Are you sure you want to see correct answer? Or maybe try to think about it another minute?", message: nil, preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "I want to try again!", style: .cancel)
        let okAction = UIAlertAction(title: "Show me correct answer!", style: .default) { _ in
            self.presentAnswerVC()
        }
        
        alertController.addAction(okAction)
        alertController.addAction(cancelAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
    func presentAnswerVC() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let answerViewController = storyboard.instantiateViewController(withIdentifier: "AnswerVC") as! AnswerViewController
        answerViewController.game = game
        self.present(answerViewController, animated:true, completion:nil)
    }
    
    private func drawGame() {
        
        guard let representation = game?.representation else { return }
        
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
        
        for stick in representation.sticks {
            let start = stick.startPoint
            let startX = x + CGFloat(start.x) * stickLength - CGFloat(start.x) * Constants.stickWidth
            let startY = y + CGFloat(start.y) * stickLength - CGFloat(start.y) * Constants.stickWidth
            
            let width = stick.horizontal ? stickLength : Constants.stickWidth
            let height = stick.horizontal ? Constants.stickWidth : stickLength
            let frame = CGRect(x: startX, y: startY, width: width, height: height)
            let stickView = StickView(frame: frame, stick: stick)
            self.view.addSubview(stickView)
        }
    }
}
