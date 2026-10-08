//
//  MainView.swift
//  Earthu
//
//  Created by Seungjun Lee on 10/8/26.
//

import SwiftUI

struct MainView: View {
    @Environment(AppRouter.self) private var router
    
    var body: some View {
        @Bindable var router = router

        // DESIGN-GAP: 탭 아이콘/라벨/탭바 스타일이 디자인 확정 전이라 SF Symbols와 임시 라벨 사용
        TabView(selection: $router.selection) {
            HomeView()
                .tabItem { Label("Home", systemImage: "house") }
                .tag(AppRouter.AppTab.home)

            MyEventView()
                .tabItem { Label("My Events", systemImage: "calendar") }
                .tag(AppRouter.AppTab.myEvents)

            ChatListView()
                .tabItem { Label("Chat", systemImage: "message") }
                .tag(AppRouter.AppTab.chatList)

            EventCreationView()
                .tabItem { Label("Create", systemImage: "plus.circle") }
                .tag(AppRouter.AppTab.eventCreation)

            MyPageView()
                .tabItem { Label("My Page", systemImage: "person") }
                .tag(AppRouter.AppTab.myPage)
        }
    }
}

#Preview {
    MainView()
        .environment(AppRouter())
}
