//
//  UINavigatorApp.swift
//  Shared
//
//  Created by Ivan on 15.05.2022.
//

import SwiftUI
import SwiftUINavigator

@main
struct UINavigatorApp: App {
    var body: some Scene {
        WindowGroup {
            NavigatorView(
                showDefaultNavBar: false
            ) {
                ContentView()
            }
        }
    }
}
