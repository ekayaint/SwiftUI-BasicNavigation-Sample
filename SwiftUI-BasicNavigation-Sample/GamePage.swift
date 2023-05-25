//
//  GamePage.swift
//  SwiftUI-BasicNavigation-Sample
//
//  Created by ekayaint on 25.05.2023.
//

import SwiftUI

struct GamePage: View {
    @Environment(\.presentationMode) var pm
    var body: some View {
        VStack(spacing: 100) {
            Button("Finished") {
                
            }
            Button("Back") {
                pm.wrappedValue.dismiss()
            }
        }.navigationTitle("Game Page")
    }
}

struct GamePage_Previews: PreviewProvider {
    static var previews: some View {
        GamePage()
    }
}
