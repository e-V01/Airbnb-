//
//  AirbnbListingsResponse.swift
//  Airbnb
//
//  Created by Y K on 16.10.2023.
//

import Foundation

struct AirbnbListingsResponse: Codable {
    let total_count: Int
    let results: [AirbnbListing]
}
