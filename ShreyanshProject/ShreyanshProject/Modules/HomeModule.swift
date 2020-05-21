//
//  HomeModule.swift
//  ShreyanshProject
//
//  Created by Shreyansh Raj on 20/05/20.
//  Copyright © 2020 Shreyansh Raj. All rights reserved.
//

import Foundation

let TMDBApiKey = "7b3f0b08ae42d8a4b702665de755b051"


struct Tranding: Codable {
    
    let posterImage: String
    
    enum CodingKeys: String, CodingKey {
        case posterImage = "backdrop_path"
        
    }
    
}

struct TrandingResults: Decodable {
    
    var page: Int
    var results: [Tranding]
    var totalPages: Int
    var totalResults: Int
    
    enum CodingKeys: String, CodingKey {
        case page
        case results
        case totalPages = "total_pages"
        case totalResults = "total_results"
        
    }
    
}

