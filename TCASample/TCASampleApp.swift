//
//  TCASampleApp.swift
//  TCASample
//
//  Created by Masahito Mori on 2024/05/11.
//

import ComposableArchitecture
import SwiftUI

@main
struct TCASampleApp: App {
    static let store = Store(initialState: AppFeature.State()) {
        AppFeature()
            ._printChanges()
    }
    
    var body: some Scene {
        WindowGroup {
            AppView(store: TCASampleApp.store)
        }
    }
}
