//
//  SwiftUIView.swift
//  
//
//  Created by João Franco on 10/04/2023.
//

import SwiftUI

struct LaunchScreenView: View {
    @Binding var showWelcomeScreen: Bool
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Text("Welcome to")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 48)
                Text("WildCatch")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 48)
                    .foregroundColor(Color.blue)
                Spacer()
                
                VStack(spacing: 24) {
                    FeatureHighlight(image: "camera", title: "Spot Wildlife With Your Camera", subtitle: "Snap or Pick a photo with the app to instantly discover fascinating insights about wild animals", color: .blue)
                    
                    FeatureHighlight(image: "books.vertical", title: "Learn More About Your Favorite Animals", subtitle: "Discover and appreciate the wonders of nature by exploring your favorite animals and endangered species.", color: .purple)
                    
                    FeatureHighlight(image: "magnifyingglass", title: "Search for Your Favorite Animals", subtitle: "Explore a vast database of species, from speedy cheetahs to cute giant pandas.", color: .green)
                }
                .padding(.leading)
                
                Spacer()
                Spacer()
                
                
                NavigationLink(destination:AboutMeView(showWelcomeScreen: $showWelcomeScreen)) {
                    HStack {
                        Text("About Me Page")
                            .foregroundColor(Color.blue)
                    }
                }
                Button(action: { self.showWelcomeScreen = false }) {
                    HStack {
                        Spacer()
                        Text("Explore")
                            .font(.headline)
                            .foregroundColor(.white)
                        Spacer()
                    }
                }
                .frame(height: 50)
                .background(Color.blue)
                .cornerRadius(15)
            }
            .padding()
        }
    }
}

struct LaunchScreenView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchScreenView(showWelcomeScreen: .constant(true))
    }
}
