//
//  Stick.swift
//  MatchesGame
//
//  Created by Rozalia Rodichev on 8/31/21.
//

import UIKit


class Stick {
    
    // id: 
    let startPoint: Point
    var horizontal: Bool
    var visible: Bool
    var clear: Bool
    
    init(startPoint: Point, horizontal: Bool, visible: Bool = true, clear: Bool = false) {
        self.startPoint = startPoint
        self.horizontal = horizontal
        self.visible = visible
        self.clear = clear
    }
}

