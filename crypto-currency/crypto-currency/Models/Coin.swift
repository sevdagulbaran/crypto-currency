//
//  Coin.swift
//  crypto-currency
//
//  Created by Sevda Gul Baran on 5.12.2022.
//

import Foundation

struct Coin: Codable, Identifiable {
    let id: String
    let name: String
    let image: String
    let currentPrice: Int?
    let marketCapRank: Int?
    let symbol: String
    let priceChangePercentange24H: Double?
}
