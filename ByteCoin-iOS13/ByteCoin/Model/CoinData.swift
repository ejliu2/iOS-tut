//
//  CoinData.swift
//  ByteCoin
//
//  Created by Eric Liu on 2021-06-03.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct CoinData: Decodable {
    let asset_id_base: String
    let asset_id_quote: String
    let rate: Double
}
