//
//  MainPage.swift
//  SwiftUI-BasicNavigation-Sample
//
//  Created by ekayaint on 25.05.2023.
//

import SwiftUI

struct MainPage: View {
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink(destination: GamePage()) {
                    Text("Start" )
                }
            }.navigationTitle("Main Page")
        }
    }
}

struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}
