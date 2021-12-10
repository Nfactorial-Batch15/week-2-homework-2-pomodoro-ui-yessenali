//
//  TabBar.swift
//  Pomodoro Timer
//
//  Created by Yessenali Zhanaidar on 09.12.2021.
//

import SwiftUI

struct TabBar: View {
    init() {
        let tabBarAppearance = UITabBarAppearance()
        tabBarAppearance.backgroundColor = .gray
        UITabBar.appearance().standardAppearance = tabBarAppearance
    }
    var body: some View {
        TabView{
            mainView()
                .tabItem{
                    Label("main", systemImage: "house")
                }
            settingsView()
                .tabItem{
                   Label("settings", systemImage: "slider.horizontal.3")
            }
            historyView()
                .tabItem{
                    Label("history", systemImage: "doc")
            }
        }.accentColor(.white)
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
