//
//  AboutMeView.swift
//  
//
//  Created by João Franco on 10/04/2023.
//

import SwiftUI

struct AboutMeView: View {
    @Binding var showWelcomeScreen: Bool
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Image("memoji")
                    .resizable()
                    .frame(width: 150, height: 150)
                    .aspectRatio(contentMode: .fill)
                
                Text("Hi👋")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 48)
                    .foregroundColor(Color.blue)
                
                Text("I'm João!")
                    .font(.headline)
                    .padding()
                Text("Welcome to my")
                Text("Swift Student Challenge 2023 Submission")

                Spacer()
//                Text("In This Project I Used:")
//                    .font(.callout)
//
//                VStack(spacing: 24) {
//                    FeatureHighlight(image: "swift", title: "SwiftUI", subtitle: "For the UI and Overall Views", color: .orange)
//
//                    FeatureHighlight(image: "eye", title: "Vision", subtitle: "For Recognizing the Animals", color: .yellow)
//
//                    FeatureHighlight(image: "brain.head.profile", title: "CoreML", subtitle: "For the Underlying Animal Identification", color: .red)
//                }
//                .padding(.leading)
//
//                Spacer()
                Spacer()
                
                Button(action: { self.showWelcomeScreen = false }) {
                    HStack {
                        Spacer()
                        Text("Continue")
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

struct AboutMeView_Previews: PreviewProvider {
    static var previews: some View {
        AboutMeView(showWelcomeScreen: .constant(true))
    }
}
