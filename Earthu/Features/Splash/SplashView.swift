//
//  SplashView.swift
//  Earthu
//
//  Created by Seungjun Lee on 10/8/26.
//

import SwiftUI

struct SplashView: View {
    @Environment(AppRouter.self) private var router
    
    var body: some View {
        Text("SplashView")
            .font(Font.largeTitle.bold())
            .onAppear {
                Task {
                    try await Task.sleep(nanoseconds: 1000000000)
                    router.didLogIn()
                }
            }
    }
}

#Preview {
    SplashView()
}
