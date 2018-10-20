//
//  AppDelegate.swift
//  TerminaApp
//
//  Created by Marquis Kurt on 10/19/18.
//  Copyright © 2018 Marquis Kurt. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!
    @IBOutlet weak var levelMeter: NSProgressIndicator!
    @IBOutlet weak var experienceMeter: NSProgressIndicator!
    @IBOutlet weak var sayBox: NSTextField!
    
    // Close the window automatically.
    func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        return true
    }
    
    func saySometing(who: String, what: String) {
        let myPopup: NSAlert = NSAlert()
        myPopup.messageText = who
        myPopup.informativeText = what
        myPopup.alertStyle = NSAlert.Style.warning
        myPopup.addButton(withTitle: "OK")
        myPopup.beginSheetModal(for: self.window!)
    }
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        window.setContentSize(NSSize(width: 1280, height: 662))
        window.backgroundColor = NSColor(patternImage: NSImage(named: NSImage.Name("MainInterfaceBackground"))!)
        window.styleMask.remove([.resizable])
        window.title = "Termina"
    
        
        levelMeter.controlTint = NSControlTint.blueControlTint
        levelMeter.doubleValue = 13
        
        saySometing(who: "Termina", what: "I'm afraid you're going to need something stronger than a portal gun this time.")
        
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}
