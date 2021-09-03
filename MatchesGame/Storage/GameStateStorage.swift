//
//  GameStateStorage.swift
//  MatchesGame
//
//  Created by Rozalia Rodichev on 9/1/21.
//

import Foundation

class GameStateStorage {
    
    static let shared = GameStateStorage()
    
    private init() {}
    
    var states: [GameState] {
        return [
            GameState(gameName: "Game 1", gameDescription: "You have 6 equal squares. Remove one stick to create 5 equal squares!", image: #imageLiteral(resourceName: "matchs21"), gameID: 1, representation: GameRepresentation(sticks: [
                Stick(startPoint: Point(x: 0, y: 0), horizontal: true),
                Stick(startPoint: Point(x: 1, y: 0), horizontal: true),
                Stick(startPoint: Point(x: 0, y: 0), horizontal: false),
                Stick(startPoint: Point(x: 1, y: 0), horizontal: false),
                Stick(startPoint: Point(x: 2, y: 0), horizontal: false),
                Stick(startPoint: Point(x: 0, y: 1), horizontal: true),
                Stick(startPoint: Point(x: 1, y: 1), horizontal: true),
                Stick(startPoint: Point(x: 3, y: 0), horizontal: false),
                Stick(startPoint: Point(x: 3, y: 1), horizontal: false),
                Stick(startPoint: Point(x: 2, y: 1), horizontal: true),
                Stick(startPoint: Point(x: 0, y: 1), horizontal: false),
                Stick(startPoint: Point(x: 1, y: 1), horizontal: false),
                Stick(startPoint: Point(x: 2, y: 1), horizontal: false),
                Stick(startPoint: Point(x: 0, y: 2), horizontal: true),
                Stick(startPoint: Point(x: 1, y: 2), horizontal: true),
                Stick(startPoint: Point(x: 2, y: 2), horizontal: true),
                Stick(startPoint: Point(x: 2, y: 0), horizontal: true)
            ]), maxX: 3, maxY: 2, finalState: GameRepresentation(sticks: [
                Stick(startPoint: Point(x: 0, y: 0), horizontal: true),
                Stick(startPoint: Point(x: 1, y: 0), horizontal: true),
                Stick(startPoint: Point(x: 0, y: 0), horizontal: false),
                Stick(startPoint: Point(x: 1, y: 0), horizontal: false),
                Stick(startPoint: Point(x: 2, y: 0), horizontal: false),
                Stick(startPoint: Point(x: 0, y: 1), horizontal: true),
                Stick(startPoint: Point(x: 1, y: 1), horizontal: true),
                Stick(startPoint: Point(x: 3, y: 0), horizontal: false),
                Stick(startPoint: Point(x: 3, y: 1), horizontal: false),
                Stick(startPoint: Point(x: 2, y: 1), horizontal: true),
                Stick(startPoint: Point(x: 0, y: 1), horizontal: false),
                Stick(startPoint: Point(x: 1, y: 1), horizontal: false),
                Stick(startPoint: Point(x: 2, y: 1), horizontal: false),
                Stick(startPoint: Point(x: 0, y: 2), horizontal: true),
                Stick(startPoint: Point(x: 2, y: 2), horizontal: true),
                Stick(startPoint: Point(x: 2, y: 0), horizontal: true)
                ]), maxRemoveNum: 2
            ),
            GameState(gameName: "Game 2", gameDescription: "You have 4 equal squares. Remove 2 sticks to create 3 equal squares!", image: #imageLiteral(resourceName: "matchs51"), gameID: 2, representation: GameRepresentation(sticks: [
                Stick(startPoint: Point(x: 0, y: 0), horizontal: true),
                Stick(startPoint: Point(x: 1, y: 0), horizontal: true),
                Stick(startPoint: Point(x: 0, y: 0), horizontal: false),
                Stick(startPoint: Point(x: 1, y: 0), horizontal: false),
                Stick(startPoint: Point(x: 2, y: 0), horizontal: false),
                Stick(startPoint: Point(x: 0, y: 1), horizontal: true),
                Stick(startPoint: Point(x: 1, y: 1), horizontal: true),
                Stick(startPoint: Point(x: 0, y: 1), horizontal: false),
                Stick(startPoint: Point(x: 1, y: 1), horizontal: false),
                Stick(startPoint: Point(x: 2, y: 1), horizontal: false),
                Stick(startPoint: Point(x: 0, y: 2), horizontal: true),
                Stick(startPoint: Point(x: 1, y: 2), horizontal: true)
            ]), maxX: 2, maxY: 2, finalState: GameRepresentation(sticks: [
                Stick(startPoint: Point(x: 0, y: 0), horizontal: true),
                Stick(startPoint: Point(x: 0, y: 0), horizontal: false),
                Stick(startPoint: Point(x: 1, y: 0), horizontal: false),
                Stick(startPoint: Point(x: 0, y: 1), horizontal: true),
                Stick(startPoint: Point(x: 1, y: 1), horizontal: true),
                Stick(startPoint: Point(x: 0, y: 1), horizontal: false),
                Stick(startPoint: Point(x: 1, y: 1), horizontal: false),
                Stick(startPoint: Point(x: 2, y: 1), horizontal: false),
                Stick(startPoint: Point(x: 0, y: 2), horizontal: true),
                Stick(startPoint: Point(x: 1, y: 2), horizontal: true)
                ]), maxRemoveNum: 2),
            GameState(gameName: "Game 3", gameDescription: "You have 3 equal squares. Replace 2 sticks to create 1 small and 1 large square!", image: #imageLiteral(resourceName: "matchs11"), gameID: 3, representation: GameRepresentation(sticks: [
                Stick(startPoint: Point(x: 0, y: 0), horizontal: true),
                Stick(startPoint: Point(x: 0, y: 0), horizontal: false),
                Stick(startPoint: Point(x: 1, y: 0), horizontal: false),
                Stick(startPoint: Point(x: 0, y: 1), horizontal: true),
                Stick(startPoint: Point(x: 1, y: 1), horizontal: true),
                Stick(startPoint: Point(x: 0, y: 1), horizontal: false),
                Stick(startPoint: Point(x: 1, y: 1), horizontal: false),
                Stick(startPoint: Point(x: 2, y: 1), horizontal: false),
                Stick(startPoint: Point(x: 0, y: 2), horizontal: true),
                Stick(startPoint: Point(x: 1, y: 2), horizontal: true),
                Stick(startPoint: Point(x: 1, y: 0), horizontal: true, clear: true),
                Stick(startPoint: Point(x: 2, y: 0), horizontal: false, clear: true)
                ]), maxX: 2, maxY: 2, finalState: GameRepresentation(sticks: [
                Stick(startPoint: Point(x: 0, y: 0), horizontal: true),
                Stick(startPoint: Point(x: 0, y: 0), horizontal: false),
                Stick(startPoint: Point(x: 1, y: 0), horizontal: false),
                Stick(startPoint: Point(x: 1, y: 1), horizontal: true),
                Stick(startPoint: Point(x: 0, y: 1), horizontal: false),
                Stick(startPoint: Point(x: 2, y: 1), horizontal: false),
                Stick(startPoint: Point(x: 0, y: 2), horizontal: true),
                Stick(startPoint: Point(x: 1, y: 2), horizontal: true),
                Stick(startPoint: Point(x: 1, y: 0), horizontal: true),
                Stick(startPoint: Point(x: 2, y: 0), horizontal: false)
                ]), maxRemoveNum: 2)
        ]
    }
}
