//
//  HTTPClient.swift
//  UlSvPl020MoviesSwiftUI
//
//  Created by joe on 7/19/24.
//

import Foundation
import Combine

enum NetworkError: Error {
    case badUrl
}

class HTTPClient {
    func fetchMovies(search: String) -> AnyPublisher<[Movie], Error> {
        guard let encodedSearch = search.urlEncoded,
              let url = URL(string: "https://omdbapi.com/?s=\(encodedSearch)&page=2&apiKey=\(Constants.Keys.apiKey)") else {
            return Fail(error: NetworkError.badUrl).eraseToAnyPublisher()
        }
                
        return URLSession.shared.dataTaskPublisher(for: url)
            .map(\.data)
            .decode(type: MovieResponse.self, decoder: JSONDecoder())
            .map(\.search)
            .receive(on: DispatchQueue.main)
            .catch { error -> AnyPublisher<[Movie], Error> in
                return Just([]).setFailureType(to: Error.self).eraseToAnyPublisher()
            }
            .eraseToAnyPublisher()
    }
}
