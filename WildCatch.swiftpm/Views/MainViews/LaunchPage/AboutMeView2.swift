//
//  AboutMeView2.swift
//
//
//  Created by João Franco on 10/04/2023.
//

import SwiftUI

struct AboutMeView2: View {
    @Binding var showWelcomeScreen: Bool
    
    var body: some View {
        VStack() {
            Spacer()
            Text("Why have I built this app?")
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .foregroundColor(.blue)
                .padding(.horizontal, 48)
            
            Text("Growing up in a coastal village in Portugal, I've always been fascinated by animals. That's why I created this app that uses the camera or a photo from the photos library, to help people identify animals and learn interesting and fun facts such as their habitats, diet, and behavior. By making it easier for people to learn about the animals around them, I hope to inspire appreciation and awareness about the importance of preserving our planet's diverse ecosystems.")
                .multilineTextAlignment(.center)
                .padding()
            
            Spacer()
            
            NavigationLink(destination: AboutMeView3(showWelcomeScreen: $showWelcomeScreen)) {
                Text("Continue")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .background(Color.blue)
                    .cornerRadius(15)
                    .padding(.horizontal, 48)
            }
        }
        .padding()
    }
}
