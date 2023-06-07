//
//  NavPage.swift
//  SwiftUI-BasicNavigation-Sample
//
//  Created by ekayaint on 6.06.2023.
//

import SwiftUI

struct NavPage: View {
    init() {
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = .red
        
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().compactAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
        
    }
    
    var body: some View {
        NavigationStack {
            VStack {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }.navigationTitle("Page")
                .toolbar(){
                    ToolbarItem(placement: .navigationBarLeading){
                        Button("Back") {
                            print("Back Clicked")
                        }.foregroundColor(.white)
                    }
                    ToolbarItemGroup(placement: .navigationBarTrailing) {
                        Button("Settings") {
                            print("Settings Clicked")
                        }
                        Button() {
                            print("Plus Clicked")
                        } label: {
                            Image(systemName: "plus")
                        }
                    }
                }
        }
    }
}

struct NavPage_Previews: PreviewProvider {
    static var previews: some View {
        NavPage()
    }
}
