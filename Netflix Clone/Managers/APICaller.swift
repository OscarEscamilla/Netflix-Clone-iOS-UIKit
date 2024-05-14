//
//  APICaller.swift
//  Netflix Clone
//
//  Created by Oscar Escamilla on 09/05/24.
//

import Foundation

struct Constants{
    static let API_KEY = "55318304fb3572fb7b23f087e9a12aa8"
    static let baseURL = "https://api.themoviedb.org"
}


enum APIError: Error{
    case failedTogetData
}

class APICaller{
    static let shared = APICaller()
    
    func getTrendingMovies(completion: @escaping (Result<[Movie], Error>) -> Void){
        guard let url = URL(string: "\(Constants.baseURL)/3/trending/movie/day?api_key=\(Constants.API_KEY)") else {return}
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)){ data, _, error in
            guard let data = data, error == nil else{
                return
            }
            
            do {
                let results = try JSONDecoder().decode(TrendingMovieResponse.self, from: data)
                completion(.success(results.results))
            } catch {
                completion(.failure(error))
            }
            
        }
        task.resume()
    }
}
