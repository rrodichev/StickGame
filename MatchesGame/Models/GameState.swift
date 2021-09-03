//
//  MatchesGame.swift
//  MatchesGame
//
//  Created by Rozalia Rodichev on 8/30/21.
//

import GameKit
import UIKit

class GameState {
    
    let gameName: String
    var isAccomplished: Bool
    let gameDescription: String
    let image: UIImage
    let gameID: Int
    let representation: GameRepresentation
    let maxX: Int
    let maxY: Int
    let finalState: GameRepresentation //should be an array

    init(gameName: String, isAccomplished: Bool = false, gameDescription: String, image: UIImage, gameID: Int, representation: GameRepresentation, maxX: Int, maxY: Int, finalState: GameRepresentation) {
        self.gameName = gameName
        self.isAccomplished = isAccomplished
        self.gameDescription = gameDescription
        self.image = image
        self.gameID = gameID
        self.representation = representation
        self.maxX = maxX
        self.maxY = maxY
        self.finalState = finalState
    }
}

