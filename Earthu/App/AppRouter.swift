//
//  AppRouter.swift
//  Earthu
//
//  Created by Seungjun Lee on 10/7/26.
//

import SwiftUI
import Observation

@Observable
final class AppRouter {
    var path: NavigationPath = .init()
    
    enum AppFlow {
        case splash
        case onboarding
        case login, signup
        case main
        case offline, error
    }
    
    enum AppTab: Hashable {
        case home, myEvents, chatList, eventCreation, myPage
    }
    
    enum Route: Hashable {
        case profile
        case eventDetail(id: String)
        case chat(id: String)
        case search
    }
    
    var flow: AppFlow = .splash
    var selection: AppTab = .home
    var paths: [AppTab: NavigationPath] = [:]
    
    func push(_ route: Route, in tab: AppTab? = nil) {
        let target = tab ?? selection
        selection = target
        paths[target, default: .init()].append(route)
    }
    
    func pop() {
        guard paths[selection]?.isEmpty == false else { return }
        paths[selection]?.removeLast()
    }
    
    func popToRoot() {
        paths[selection] = .init()
    }
}
