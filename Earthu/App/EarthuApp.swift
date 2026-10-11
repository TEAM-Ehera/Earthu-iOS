//
//  EarthuApp.swift
//  Earthu
//
//  Created by Seungjun Lee on 10/2/26.
//

import SwiftUI

@main
struct EarthuApp: App {
    @State private var router = AppRouter()
    
    var body: some Scene {
        WindowGroup {
            RootView()
                .environment(router)
        }
    }
}
