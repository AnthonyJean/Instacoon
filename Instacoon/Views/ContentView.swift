//
//  ContentView.swift
//  Instacoon
//
//  Created by Anthony Jean on 23/12/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HeaderView()
        }
        .background {
            Color("AppBackgroundColor")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
