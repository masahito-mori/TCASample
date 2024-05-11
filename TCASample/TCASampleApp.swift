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
    static let store = Store(initialState: CounterFeature.State()) {
        CounterFeature()
            ._printChanges()
    }
    
    var body: some Scene {
        WindowGroup {
            CounterView(store: TCASampleApp.store)
        }
    }
}
