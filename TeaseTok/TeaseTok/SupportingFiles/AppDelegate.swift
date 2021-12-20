//
//  AppDelegate.swift
//  TeaseTok
//
//  Created by mac on 6.12.21.
//

import Cocoa

@main
class AppDelegate: NSObject,
                   NSApplicationDelegate {
    @IBOutlet var window: NSWindow!
    private var rootRouter: RootRouter?

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        self.window = NSWindow(contentRect: NSScreen.main?.frame ?? NSRect(),
                               styleMask: [.miniaturizable, .closable, .resizable, .titled],
                               backing: .buffered,
                               defer: false)
        self.rootRouter = RootRouter()
        self.window.title = L10n.appTitle.localize()
        self.window?.contentViewController = rootRouter?.rootViewController
        self.window?.makeKeyAndOrderFront(nil)
    }

    func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
        return true
    }

    func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        return true
    }
}
