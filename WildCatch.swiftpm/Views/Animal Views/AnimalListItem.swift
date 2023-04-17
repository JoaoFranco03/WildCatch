import SwiftUI

struct AnimalListItem: View {
    var animal: Animal
    var body: some View {
        HStack(spacing: 10) {
            Image(uiImage: animal.photo ?? UIImage(systemName: "questionmark")!)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 140, height: 70)
                .clipped()
                .mask { RoundedRectangle(cornerRadius: 8, style: .continuous) }
            VStack(alignment: .leading) {
                Text(animal.name)
                    .font(.system(size: 16, weight: .medium, design: .default))
            }
            .font(.subheadline)
            Spacer()
        }
        Divider()
    }
}

struct AnimalListItem_Previews: PreviewProvider {
    static var previews: some View {
        AnimalListItem(animal: ModelData.shared.sortedAnimalsByName[0])
    }
}
