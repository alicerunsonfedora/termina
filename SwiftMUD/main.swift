//
//  main.swift
//  SwiftMUD
//
//  Created by Marquis Kurt on 10/17/18.
//  Copyright © 2018 Marquis Kurt. All rights reserved.
//

let myPlayer = Player("Henry")
let command = CommandInterpreter()
let theDarkRoom = Room(myPlayer)

while true {
    print("Type a command to continue")
    command.parseCommand(readLine(strippingNewline: true)!, theDarkRoom)
}
