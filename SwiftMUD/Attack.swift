//
//  Attack.swift
//  SwiftMUD
//
//  Created by Marquis Kurt on 10/17/18.
//  Copyright © 2018 Marquis Kurt. All rights reserved.
//

import Foundation

class AttackScene {
    
    var player: Player?
    var enemy: Monster?
    
    /**
     Allow each entity to attack each other.
     */
    func attack() {
        enemy?.takeDamage((player?.level)!)
        print("You strike first.")
        if (enemy?.health == 0) {
            enemy = nil
            print("Congratulations! You've killed the monster.\nYour XP has been upgraded.")
            player?.experience += 5
            
            if ((player?.experience)! >= 25) {
                player?.levelUp(1)
            }
        } else {
            let enemyHealth = String(enemy!.health)
            let selfHealth = String(player!.health)
            print("It wasn't enough to kill the monster (health now \(enemyHealth).\nIt is now the monster's turn.")
            enemy?.attackPlayer(player!)
            
            if (player?.health == 0) {
                player = nil
                print("You died!\nThe monster has killed you.")
                exit(1)
            }
            print("The monster hasn't killed you yet! Your health is \(selfHealth).")
        }
    }
    
    init(_ whichPlayer: Player, _ whichMonster: Monster) {
        player = whichPlayer
        enemy = whichMonster
    }
}
