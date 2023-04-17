//
//  ContentView.swift
//  SeeFood
//
//  Created by Leon Wei on 5/31/21.
//

import SwiftUI

struct IdentifyView: View {
    // State variables to manage the UI state
    @State var isPresenting: Bool = false
    @State var uiImage: UIImage?
    @State var sourceType: UIImagePickerController.SourceType = .photoLibrary
    
    // Image classifier to classify the selected image
    @ObservedObject var classifier: ImageClassifier
    
    var body: some View {
        NavigationView {
            VStack{
                // Container for displaying the selected image
                RoundedRectangle(cornerRadius: 10, style: .continuous)
                    .stroke(.blue)
                    .background(RoundedRectangle(cornerRadius: 10, style: .continuous).fill(.gray.opacity(0.1)))
                    .overlay(
                        Group {
                            if uiImage != nil {
                                Image(uiImage: uiImage!)
                                    .resizable()
                                    .scaledToFit()
                            }
                        }
                    )
                // Buttons to select an image from camera or library
                HStack{
                    HStack(alignment: .firstTextBaseline) {
                        Image(systemName: "photo.fill")
                            .imageScale(.medium)
                        Text("Photo Picker")
                    }
                    .font(.body.weight(.medium))
                    .padding(.vertical, 16)
                    .frame(maxWidth: .infinity)
                    .clipped()
                    .foregroundColor(.blue)
                    .background {
                        RoundedRectangle(cornerRadius: 10, style: .continuous)
                            .stroke(.clear.opacity(0.25), lineWidth: 0)
                            .background(RoundedRectangle(cornerRadius: 10, style: .continuous).fill(.blue.opacity(0.15)))
                        
                    }
                    .onTapGesture {
                        // When the button is tapped, set the image source type and show the image picker
                        isPresenting = true
                        sourceType = .photoLibrary
                    }
                    
                    
                    HStack(alignment: .firstTextBaseline) {
                        Image(systemName: "camera.fill")
                            .imageScale(.medium)
                        Text("Camera")
                    }
                    .font(.body.weight(.medium))
                    .padding(.vertical, 16)
                    .frame(maxWidth: .infinity)
                    .clipped()
                    .foregroundColor(.blue)
                    .background {
                        RoundedRectangle(cornerRadius: 10, style: .continuous)
                            .stroke(.clear.opacity(0.25), lineWidth: 0)
                            .background(RoundedRectangle(cornerRadius: 10, style: .continuous).fill(.blue.opacity(0.15)))
                            .onTapGesture {
                                // When the button is tapped, set the image source type and show the camera
                                isPresenting = true
                                sourceType = .camera
                            }
                    }
                }
                
                // Result area to display the classification result
                HStack{
                    if let imageClass = classifier.imageClass {
                        // When an animal is recognized, show a link to the details page
                        NavigationLink(destination: AnimalDetailView(animal: ModelData.shared.findAnimalVision(withName: imageClass)!)) {
                            Image(systemName: "checkmark.seal.fill")
                                .font(.title)
                            Text("It's a " + imageClass + " (Click to See More)")
                        }
                        .font(.body.weight(.medium))
                        .padding(.vertical, 16)
                        .frame(maxWidth: .infinity)
                        .clipped()
                        .foregroundColor(.green)
                        .background {
                            RoundedRectangle(cornerRadius: 10, style: .continuous)
                                .stroke(.clear.opacity(0.25), lineWidth: 0)
                                .background(RoundedRectangle(cornerRadius: 10, style: .continuous).fill(.green.opacity(0.15)))
                        }
                    }else{
                        if uiImage == nil {
                            // Button on App Start
                            HStack{
                                Image(systemName: "play.fill")
                                    .font(.title)
                                Text("Take or Choose a Photo of an Animal to Start")
                            }
                            .font(.body.weight(.medium))
                            .padding(.vertical, 16)
                            .frame(maxWidth: .infinity)
                            .clipped()
                            .foregroundColor(.orange)
                            .background {
                                RoundedRectangle(cornerRadius: 10, style: .continuous)
                                    .stroke(.clear.opacity(0.25), lineWidth: 0)
                                    .background(RoundedRectangle(cornerRadius: 10, style: .continuous).fill(.orange.opacity(0.15)))
                            }
                        }else{
                            // Button when something goes wrong
                            HStack{
                                Image(systemName: "questionmark.circle.fill")
                                    .font(.title)
                                Text("Sorry, I don't recognize any animals, but let's keep looking together!")
                            }
                            .font(.body.weight(.medium))
                            .padding(.vertical, 16)
                            .frame(maxWidth: .infinity)
                            .clipped()
                            .foregroundColor(.red)
                            .background {
                                RoundedRectangle(cornerRadius: 10, style: .continuous)
                                    .stroke(.clear.opacity(0.25), lineWidth: 0)
                                    .background(RoundedRectangle(cornerRadius: 10, style: .continuous).fill(.red.opacity(0.15)))
                            }
                        }
                    }
                }
            }
            
            .sheet(isPresented: $isPresenting){
                ImagePicker(uiImage: $uiImage, isPresenting:  $isPresenting, sourceType: $sourceType)
                    .onDisappear{
                        if uiImage != nil {
                            classifier.detect(uiImage: uiImage!)
                        }
                    }
            }
            .navigationTitle("Identify Animal")
            .padding()
        }
    }
}

struct ImagePicker: UIViewControllerRepresentable {
    
    @Binding var uiImage: UIImage?
    @Binding var isPresenting: Bool
    @Binding var sourceType: UIImagePickerController.SourceType
    
    func makeUIViewController(context: Context) -> UIImagePickerController {
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = sourceType
        imagePicker.delegate = context.coordinator
        return imagePicker
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {
    }
    
    typealias UIViewControllerType = UIImagePickerController
    
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    
    class Coordinator: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
        
        let parent: ImagePicker
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            parent.uiImage = info[.originalImage] as? UIImage
            parent.isPresenting = false
        }
        
        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            parent.isPresenting = false
        }
        
        init(_ imagePicker: ImagePicker) {
            self.parent = imagePicker
        }
    }
}


struct IdentifyView_Previews: PreviewProvider {
    static var previews: some View {
        IdentifyView(classifier: ImageClassifier())
    }
}
