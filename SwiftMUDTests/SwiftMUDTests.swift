//
//  SwiftMUDTests.swift
//  SwiftMUDTests
//
//  Created by Marquis Kurt on 10/18/18.
//  Copyright © 2018 Marquis Kurt. All rights reserved.
//

import XCTest

class SwiftMUDTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        let version = "1.0.0beta2"
        
        print("""
            SwiftMUD \(version)
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
                
                testCommands = ["aboutself", "aboutroom", "equip", "attack", "heal", "leave", "exit"]
                
                for element in testCommands {
                    command.parseCommand(element, theDarkRoom)
                }
                
            }
        }
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
