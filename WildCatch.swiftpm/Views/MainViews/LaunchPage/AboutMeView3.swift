//
//  AboutMeView3.swift
//
//
//  Created by João Franco on 10/04/2023.
//

import SwiftUI

struct AboutMeView3: View {
    @Binding var showWelcomeScreen: Bool
    
    var body: some View {
        VStack() {
            Spacer()
            Text("Technologies I used in the App:")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.blue)
            VStack(){
                FeatureHighlight(image: "swift", title: "SwiftUI", subtitle: "Used to create an intuitive and user-friendly interface, that showcases the animals and their characteristics", color: .orange)
                
                FeatureHighlight(image: "eye", title: "Vision", subtitle: "Used to analyze the input image and classify it using the pre-trained Animal Classifier Machine Learning Model that was created by me using Create ML.", color: .yellow)
                
                FeatureHighlight(image: "brain.head.profile", title: "CoreML", subtitle: "Used to load and deploy the pre-trained Animal Classifier Machine Learning Model for image classification", color: .red)
            }
            .padding()
            Spacer()
            Button(action: { self.showWelcomeScreen = false }) {
                HStack {
                    Spacer()
                    Text("Explore The App")
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
