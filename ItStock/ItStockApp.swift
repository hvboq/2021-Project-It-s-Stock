//
//  ItStockApp.swift
//  ItStock
//
//  Created by 여동민 on 2021/04/20.
//

import SwiftUI
import AppKit
import RealmSwift

class AppDelegate: NSObject, NSApplicationDelegate {
    func applicationDidFinishLaunching(_ notification: Notification) {
        print(Realm.Configuration.defaultConfiguration.fileURL!)
    }
}

@main
struct ItStockApp: SwiftUI.App {
    @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
