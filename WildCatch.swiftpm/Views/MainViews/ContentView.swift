//
//  ContentView.swift
//
//
//  Created by João Franco on 07/04/2023.
//

import SwiftUI

struct ContentView: View {
    @State var showWelcomeScreen = true
    
    enum Tab {
        case featured
        case list
    }

    var body: some View {
        TabView() {
            // Identify Animal
            IdentifyView(classifier: ImageClassifier())
                .tabItem {
                    Label("Identify", systemImage: "camera.fill")
                }
                .tag(Tab.featured)
            // Learn Page
            LearnPageView()
                .tabItem {
                    Label("Learn", systemImage: "books.vertical.fill")
                }
                .tag(Tab.list)
            // Search Page
            SearchView()
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
                .tag(Tab.list)
        }
        .sheet(isPresented: $showWelcomeScreen) {
            LaunchScreenView(showWelcomeScreen: $showWelcomeScreen)
        }
        // Hide Back Button to LaunchScreenView
        .navigationBarBackButtonHidden(true)
        // Disable iPad SideBar
        .navigationViewStyle(.stack)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

