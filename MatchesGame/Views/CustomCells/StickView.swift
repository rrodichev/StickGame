//
//  StickView.swift
//  MatchesGame
//
//  Created by Rozalia Rodichev on 9/3/21.
//

import UIKit

class StickView: UIView {
    
    private enum Constants {
        static let visibleColor: UIColor = .systemGreen
        static let invisibleColor: UIColor = .systemGreen.withAlphaComponent(0.25)
        static let clearColor: UIColor = .clear
    }
    
    var stick: Stick?
    //var game: GameState?
    
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
        guard let stick = stick else { return }
        self.backgroundColor = stick.visible ? Constants.visibleColor : Constants.invisibleColor
        self.backgroundColor = stick.clear ? Constants.clearColor : Constants.visibleColor
        self.layer.cornerRadius = 19
        self.layer.masksToBounds = true
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
        self.addGestureRecognizer(tapGestureRecognizer)
    }
    
    @objc private func handleTap(_ sender: UITapGestureRecognizer? = nil) {
        guard let stick = stick else { return }
        
        stick.visible = !stick.visible
        self.backgroundColor = stick.visible ? Constants.visibleColor : Constants.invisibleColor
        
        //guard let game = game else { return }
        
        
    }
}
