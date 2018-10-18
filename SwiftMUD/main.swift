//
//  main.swift
//  SwiftMUD
//
//  Created by Marquis Kurt on 10/17/18.
//  Copyright © 2018 Marquis Kurt. All rights reserved.
//

let version = "1.0.0beta1"

print("""
SwiftMUD \(version)
Copyright © 2018 Marquis Kurt. All rights reserved.
""")

let myPlayer = Player("Henry")
let command = CommandInterpreter()

while true {
    var theDarkRoom = Room(myPlayer)
    
    while theDarkRoom.isDestroyed == false {
        if theDarkRoom.isDestroyed == true {
            theDarkRoom = Room(myPlayer)
        }
        print("Type a command to continue")
        command.parseCommand(readLine(strippingNewline: true)!, theDarkRoom)
    }
}
