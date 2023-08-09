//
//  movies.swift
//  Exxen
//
//  Created by Öznur Ölçek on 8.08.2023.
//

import Foundation

enum Sections: CaseIterable {
    case highlights
    case series
    case reality
    case documentaries
    case celebrities
    case comedies
    case life
    case kids
    
    var sections: String {
        switch self {
        case .highlights:
            return "Öne Çıkanlar"
        case .series:
            return "Diziler"
        case .reality:
            return "Reality"
        case .documentaries:
            return "Belgeseller"
        case .celebrities:
            return "Fenomenler"
        case .comedies:
            return "Komediler"
        case .life:
            return "Yaşam"
        case .kids:
            return "Çocuklar"
        }
    }
}

class Movies {
    var id: Int?
    var name: String?
    var imageName: String?
    var section: Sections?
    
    init() {
        
    }
    
    init(id: Int, name: String, imageName: String, section: Sections) {
        self.id = id
        self.name = name
        self.imageName = imageName
        self.section = section
    }
}
