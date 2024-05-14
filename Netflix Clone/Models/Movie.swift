//
//  Movie.swift
//  Netflix Clone
//
//  Created by Oscar Escamilla on 13/05/24.
//

import Foundation

struct TrendingMovieResponse: Codable {
    let results: [Movie]
}


struct Movie: Codable{
    let id: Int
    let media_type: String?
    let original_name:  String?
    let poster_path: String?
    let overview: String?
    let vote_count: Int
    let release_date: String?
    let vote_average: Double
}
