//
//  Room.swift
//  SwiftMUD
//
//  Created by Marquis Kurt on 10/18/18.
//  Copyright © 2018 Marquis Kurt. All rights reserved.
//

import Foundation

class Room {
    var myMonster: Monster?
    var monsterHere = false
    var myAttackSequence: AttackScene?
    
    
    /**
     Attempt to attack the monster in the room. If the monster is dead from attack, removes it from Room.
     */
    func attackHere() {
        if myAttackSequence?.enemy != nil {
            myAttackSequence?.attack()
        } else {
            monsterHere = false
            myMonster = nil
        }
    }
    
    /**
     Constructs the Room object. Randomly adds monsters and an attack sequence if necessary.
     
     - Parameters:
        - player: The player to put into the room
     */
    init(_ player: Player) {
        let chance = Int.random(in: 0 ... 9)
        
        if (chance > 4) {
            myMonster = Monster("Searcher", chance)
            monsterHere = true
            myAttackSequence = AttackScene(player, myMonster!)
        }
    }
    
}
