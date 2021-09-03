//
//  GameListTableViewController.swift
//  MatchesGame
//
//  Created by Rozalia Rodichev on 8/30/21.
//

import UIKit

class GameListTableViewController: UITableViewController {

    // MARK: - Lifecycles
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 75
    }
    
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return GameStateStorage.shared.states.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "gameCell", for: indexPath)
        let game = GameStateStorage.shared.states[indexPath.row]
        
        cell.textLabel?.text = game.gameName
        cell.textLabel?.textAlignment = .left
        cell.textLabel?.textColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
        cell.textLabel?.font = UIFont(name:"Arial Rounded MT Bold", size: 23.0)
        cell.backgroundColor = .systemGreen
        cell.layer.cornerRadius = 16
        cell.layer.masksToBounds = true

        return cell
    }

    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toGameDetailVC" {
            guard let indexPath = tableView.indexPathForSelectedRow,
                  let destination = segue.destination as? GameDetailsViewController else { return }
            destination.game = GameStateStorage.shared.states[indexPath.row]
        }
    }
}


extension GameListTableViewController: GameToggleDelegate {
    func toggleIsAccomplishedFor(game: GameState) {
//        GameController.shared.toggleIsAccomplished(game: game)
        tableView.reloadData()
    }
}
