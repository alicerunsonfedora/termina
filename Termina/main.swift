//
//  main.swift
//  Termina
//
//  Created by Marquis Kurt on 10/17/18.
//  Copyright © 2018 Marquis Kurt. All rights reserved.
//

let version = "1.0.0beta2"

print("""
    Termina \(version)
    Copyright © 2018 Marquis Kurt. All rights reserved.
    """)

print("You! What is your name?")
let myPlayer = Player(readLine()!)
let command = CommandInterpreter()

print("\n")
command.parseCommand("help", Room(myPlayer))
print("\n")

while true {
    var theDarkRoom = Room(myPlayer)
    
    while theDarkRoom.isDestroyed == false {
        if theDarkRoom.isDestroyed == true {
            theDarkRoom = Room(myPlayer)
        }
        print("What would you like to do?")
        command.parseCommand(readLine(strippingNewline: true)!, theDarkRoom)
    }
}
