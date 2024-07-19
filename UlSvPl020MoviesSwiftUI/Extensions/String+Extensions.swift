//
//  String+Extensions.swift
//  UlSvPl020MoviesSwiftUI
//
//  Created by joe on 7/19/24.
//

import Foundation

extension String {
    var urlEncoded: String? {
        return addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
    }
}
