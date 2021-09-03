//
//  StickView.swift
//  MatchesGame
//
//  Created by Rozalia Rodichev on 9/3/21.
//

import UIKit

class StickView: UIView {
    
    private enum Constants {
        static let visibleColor: UIColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        static let invisibleColor: UIColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1).withAlphaComponent(0.25)
    }
    
    var stick: Stick?
    
    convenience init(frame: CGRect, stick: Stick) {
        self.init(frame: frame)
        self.stick = stick
        setupUI()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI() {
        
        guard let stick = stick else {
            return
        }
        
//        self.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        self.backgroundColor = stick.visible ? Constants.visibleColor : Constants.invisibleColor
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
        self.addGestureRecognizer(tapGestureRecognizer)
    }
    
    @objc private func handleTap(_ sender: UITapGestureRecognizer? = nil) {
        
        guard let stick = stick else {
            return
        }
        
        stick.visible = !stick.visible
        self.backgroundColor = stick.visible ? Constants.visibleColor : Constants.invisibleColor
    }
}
