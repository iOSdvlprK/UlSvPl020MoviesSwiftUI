//
//  ContentView.swift
//  UlSvPl020MoviesSwiftUI
//
//  Created by joe on 7/19/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    NavigationStack {
        ContentView()
    }
}
