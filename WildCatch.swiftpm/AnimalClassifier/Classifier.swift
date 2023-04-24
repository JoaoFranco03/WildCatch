//
//  Classifier.swift
//
//
//  Created by João Franco on 08/04/2023.
//

import CoreML
import CoreImage
import Vision

struct Classifier {
    
    private(set) var results: String?
    
    mutating func detect(ciImage: CIImage) {
        
        guard let model = try? VNCoreMLModel(for: AnimalClassifier(configuration: MLModelConfiguration()).model)
        else {
            return
        }
        
        let request = VNCoreMLRequest(model: model)
        
        let handler = VNImageRequestHandler(ciImage: ciImage, options: [:])
        
        try? handler.perform([request])
        
        guard let results = request.results as? [VNClassificationObservation] else {
            return
        }
        
        if let firstResult = results.first {
            if (firstResult.identifier != "Human"){
                if (firstResult.confidence > 0.8){
                    self.results = firstResult.identifier
                } else {
                    self.results = nil
                }
            } else {
                self.results = nil
            }
        } else {
            self.results = nil
        }
    }
}

