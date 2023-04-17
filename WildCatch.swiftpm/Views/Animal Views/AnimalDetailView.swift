import Foundation
import SwiftUI

struct AnimalDetailView: View {
    let animal: Animal
    
    var body: some View {
        ScrollView {
            VStack {
                ZStack(alignment: .bottom) {
                    Image(uiImage: animal.photo ?? UIImage(systemName: "questionmark")!)
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(maxWidth: .infinity, maxHeight: 620)
                }
                .frame(maxWidth: .infinity, maxHeight: 620)
                .clipped()
                VStack(alignment: .leading, spacing: 4) {
                    HStack {
                        Text(animal.name)
                            .font(.system(size: 29, weight: .semibold, design: .default))
                        Spacer()
                        NavigationLink(destination: AnimalsByStatusView(receivedEndangeredStatus: animal.endangeredStatus)) {
                            HStack(spacing: 3) {
                                Image(uiImage: endangeredStatusImage(for: animal.endangeredStatus))
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 30, height: 30)
                                    .clipShape(Circle())
                                Text((endangeredStatusString(for: animal.endangeredStatus)))
                                    .foregroundColor(endangeredStatusColor(for: animal.endangeredStatus))
                                    .padding(.leading, 5)
                            }
                            .padding(.top, 12)
                            .font(.subheadline.weight(.regular))
                        }
                        
                    }
                    .frame(maxWidth: .infinity)
                    Text(animal.scientificName)
                        .font(.system(.callout, design: .serif).weight(.medium))
                        .foregroundColor(.secondary)
                    
                    Spacer()
                    
                    NavigationLink(destination: AnimalsByGroupView(receivedGroup: animal.group)) {
                        Text("Group: " + animal.group.rawValue)
                            .font(.system(.callout).weight(.light))
                            .foregroundColor(.secondary)
                            .opacity(70);
                    }
                    NavigationLink(destination: AnimalsByHabitatView(receivedHabitat: animal.habitat)) {
                        Text("Habitat: " + animal.habitat.rawValue)
                            .font(.system(.callout).weight(.light))
                            .foregroundColor(.secondary)
                            .opacity(70);
                    }
                    Text(animal.description)
                        .font(Font(UIFont.systemFont(ofSize: 16, weight: .regular)))
                        .padding(.vertical)
                }
                .padding(.horizontal, 24)
                .padding(.top, 12)
            }
            VStack(alignment: .leading){
                Text("Fun Facts:")
                    .font(.title3.weight(.bold))
                    .padding(.bottom, 10)
                    .padding(.leading, 24)
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 20) {
                        ForEach(animal.funFacts.indices, id: \.self) { index in
                            VStack(alignment: .leading, spacing: 10) {
                                Text(animal.funFacts[index])
                                    .font(.subheadline)
                                    .multilineTextAlignment(.leading)
                            }
                            .padding()
                            .background(Color.yellow.opacity(0.4))
                            .cornerRadius(10)
                            .frame(width: 300)
                            .padding(.leading, index == 0 ? 24 : 0)
                        }
                    }
                    .padding(.bottom, 70)
                }
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct AnimalDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AnimalDetailView(animal: ModelData.shared.sortedAnimalsByName[0])
    }
}
