//
//  ContentView.swift
//  Earthu
//
//  Created by Seungjun Lee on 10/2/26.
//

import SwiftUI

struct RootView: View {
    @Environment(AppRouter.self) private var router
    
    var body: some View {
        Group {
            switch router.flow {
            case .splash:
                SplashView()
            case .auth:
                LoginView()
            case .onboarding:
                OnboardingView()
            case .main:
                MainView()
            }
        }
        .animation(.default, value: router.flow)
    }
}
 
