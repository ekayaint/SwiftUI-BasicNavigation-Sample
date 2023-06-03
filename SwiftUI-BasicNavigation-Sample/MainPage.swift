//
//  MainPage.swift
//  SwiftUI-BasicNavigation-Sample
//
//  Created by ekayaint on 25.05.2023.
//

import SwiftUI

struct MainPage: View {
    @State private var gamePageTransition = false
    
    init() {
        print("init executed")
    }
    var body: some View {
        NavigationStack {
            VStack {
                Button("Start") {
                    gamePageTransition = true
                }
                /*NavigationLink(destination: GamePage()) {
                    Text("Start" )
                }*/
            }.navigationTitle("Main Page")
                .navigationDestination(isPresented: $gamePageTransition) {
                    let p = Person(name: "Ahmet", age: 35, height: 177)
                    GamePage(p:p)
                }.onAppear{
                    print("onAppear executed")
                }.onDisappear{
                    print("onDisappear executed")
                }
        }
    }
}

struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}
