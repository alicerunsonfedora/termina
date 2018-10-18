//
//  Weapon.swift
//  SwiftMUD
//
//  Created by Marquis Kurt on 10/18/18.
//  Copyright © 2018 Marquis Kurt. All rights reserved.
//

import Foundation

class Weapon: Item {
    
    var level: Int!
    var equipper: Player!
    
    func equip() {
        equipper.levelUp(5)
    }
    
    func unequip() {
        equipper.level = equipper.level - 5
    }
    
    override func use() {
        if (currentUse <= 0) {
            print("[E] Your weapon can no longer be used!")
            unequip()
        } else {
            super.use()
        }
    }
    
    init(_ itemName: String, _ equipLevel: Int, _ equippedPlayer: Player) {
        super.init(itemName, "Weapon")
        level = equipLevel
        equipper = equippedPlayer
    }
}
