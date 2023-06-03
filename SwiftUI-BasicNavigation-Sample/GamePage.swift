//
//  GamePage.swift
//  SwiftUI-BasicNavigation-Sample
//
//  Created by ekayaint on 25.05.2023.
//

import SwiftUI

struct GamePage: View {
    @Environment(\.presentationMode) var pm
    @State private var resultPageTransition = false
    
    var p = Person()
    
    var body: some View {
        VStack(spacing: 100) {
            Text("\(p.name!) - \(p.age!) - \(p.height!)")
            Button("Finished") {
                resultPageTransition = true
            }
            Button("Back") {
                pm.wrappedValue.dismiss()
            }
        }.navigationTitle("Game Page")
            .sheet(isPresented: $resultPageTransition) {
                ResultPage()
            }
    }
}

struct GamePage_Previews: PreviewProvider {
    static var previews: some View {
        GamePage()
    }
}
