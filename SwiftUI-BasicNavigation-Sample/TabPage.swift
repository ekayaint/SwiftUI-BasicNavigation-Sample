//
//  TabPage.swift
//  SwiftUI-BasicNavigation-Sample
//
//  Created by ekayaint on 7.06.2023.
//

import SwiftUI

struct TabPage: View {
    
    init() {
        let appearance = UITabBarAppearance()
        appearance.backgroundColor = .systemIndigo
        
        changeColor(itemApeearance: appearance.stackedLayoutAppearance)
        changeColor(itemApeearance: appearance.inlineLayoutAppearance)
        changeColor(itemApeearance: appearance.compactInlineLayoutAppearance)
        
        UITabBar.appearance().standardAppearance = appearance
        UITabBar.appearance().scrollEdgeAppearance = appearance
    }
    
    func changeColor(itemApeearance:UITabBarItemAppearance) {
        //Selected
        itemApeearance.selected.iconColor = .systemOrange
        itemApeearance.selected.titleTextAttributes = [.foregroundColor: UIColor.systemOrange]
        
        //Not Selected
        itemApeearance.normal.iconColor = .white
        itemApeearance.normal.titleTextAttributes = [.foregroundColor: UIColor.white]
    }
    var body: some View {
        NavigationStack{
            TabView{
                TabHomePage().tabItem{
                    Label("Homepage", systemImage: "homekit")
                }
                SettingsPage().tabItem{
                    Label("Settings", systemImage: "gear")
                }
            }.navigationTitle("Tab View Usage")
        }
    }
}

struct TabPage_Previews: PreviewProvider {
    static var previews: some View {
        TabPage()
    }
}
