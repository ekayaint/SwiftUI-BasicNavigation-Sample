//
//  ResultPage.swift
//  SwiftUI-BasicNavigation-Sample
//
//  Created by ekayaint on 25.05.2023.
//

import SwiftUI

struct ResultPage: View {
    @Environment(\.presentationMode) var pm
    var body: some View {
        VStack ( spacing: 50) {
            Text("Result Screen").font(.system(size: 35))
            Button("Close") {
                pm.wrappedValue.dismiss()
            }
        }
    }
}

struct ResultPage_Previews: PreviewProvider {
    static var previews: some View {
        ResultPage()
    }
}
