//
//  Commads.swift
//  SwiftMUD
//
//  Created by Marquis Kurt on 10/17/18.
//  Copyright © 2018 Marquis Kurt. All rights reserved.
//

import Foundation

class CommandInterpreter {
    
    /**
     Interpret the given input to perform an action.
     
     - Parameters:
        - command: The command to try running
        - room: The room the player is located in.
     */
    func parseCommand(_ command: String, _ room: Room) {
        switch command {
        case "attack":
            if room.monsterHere {
                room.attackHere()
            } else {
                print("You cannot attack now, there is no monster nearby.")
            }
            break
        case "exit":
            print("Are you sure you want to exit? (y/n)")
            
            if (readLine()! == "y") || (readLine()! == "yes") {
                exit(0)
            } else if (readLine()! == "n") || (readLine()! == "no") {
                break
            }
        case "aboutself":
            let myLevel = String(myPlayer.level)
            let myExperience = String(myPlayer.experience)
            print("===\(myPlayer.name)===")
            print("Level: [\(myLevel)]")
            print("Progress to next Level: [\(myExperience)]")
            print("Health: \(myPlayer.health)/\(myPlayer.maximumHealth)")
            break
        case "aboutroom":
            print("===Current Room===")
            if room.monsterHere {
                let monsterLevel = String(room.myMonster!.level)
                print("[!] A monster is present!")
                print("Monster Level: [\(monsterLevel)]")
            } else {
                print("No threats detected.")
            }
            print()
            break
        case "help":
            print("""
aboutself - displays information about oneself.
attack - attacks the monster in the room, if present.
exit - quits the game.
help - displays this screen.
""")
            break
        default:
            print("\(command) is not a valid command. Type 'help' to see a list of commands.")
            break
        }
    }
}
