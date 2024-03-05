//
//  CanvasionApp.swift
//  Canvasion
//
//  Created by Om Dilip Naik on 2/25/24.
//

import SwiftUI

@main
struct CanvasionApp: App {
    @Bindable var userSettings: UserSettingsModel = UserSettingsModel()
    var body: some Scene {
        WindowGroup {
            ContentView(userSettings: userSettings)
        }
    }
}
