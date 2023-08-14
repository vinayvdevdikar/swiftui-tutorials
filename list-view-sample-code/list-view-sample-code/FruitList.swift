//
//  FruitList.swift
//  list-view-sample-code
//
//  Created by Vinay Devdikar on 14/08/23.
//

import Foundation
struct FruitSection: Decodable, Identifiable {
    var id = UUID()
    let name: [String]
    let section: String
    
    enum CodingKeys: String, CodingKey {
        case name
        case section
    }
}

