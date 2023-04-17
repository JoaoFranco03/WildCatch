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
                
                NavigationLink(destination:AboutMeView2(showWelcomeScreen: $showWelcomeScreen)) {
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

struct AboutMeView_Previews: PreviewProvider {
    static var previews: some View {
        AboutMeView(showWelcomeScreen: .constant(true))
    }
}
