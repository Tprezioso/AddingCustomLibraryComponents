//
//  ContentView.swift
//  CustomComponentsLibrary
//
//  Created by Thomas Prezioso on 10/13/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
            .customViewStyle(color: .green, cornerRadius: 10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
