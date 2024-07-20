//
//  UlSvPl020MoviesSwiftUIApp.swift
//  UlSvPl020MoviesSwiftUI
//
//  Created by joe on 7/19/24.
//

import SwiftUI

@main
struct UlSvPl020MoviesSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                ContentView(httpClient: HTTPClient())
            }
        }
    }
}
