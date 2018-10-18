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
     */
    func parseCommand(_ command: String) {
        switch command {
        case "attack":
            theAttack.attack()
            break
        case "exit":
            print("Are you sure you want to exit? (y/n)")
            
            if (readLine()!) == "y" {
                exit(0)
            } else if (readLine()!) == "n" {
                break
            }
        case "help":
            print("""
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
