//
//  File.swift
//  Canvasion
//
//  Created by Om Dilip Naik on 2/25/24.
//

import SwiftUI
struct AssetClassStruct: Identifiable, Hashable {
    let title: String
    let id = UUID()
}

var stocksAssetClass = AssetClassStruct(title: "Stocks")
var cryptoAssetClass = AssetClassStruct(title: "Crypto")
var optionsAssetClass = AssetClassStruct(title: "Options")

extension AssetClassStruct {

    static var listAll: [AssetClassStruct] {
        [
         cryptoAssetClass,
         stocksAssetClass,
         optionsAssetClass
        ]
    }

    static var stocks: AssetClassStruct {
        return stocksAssetClass
    }

    static var crypto: AssetClassStruct {
        return cryptoAssetClass
    }

    static var options: AssetClassStruct {
        return optionsAssetClass
    }

    // TODO: better way?
    var isStocks: Bool {
        return self.id == stocksAssetClass.id
    }

    var isCrypto: Bool {
        return self.id == cryptoAssetClass.id
    }

    var isOptions: Bool {
        return self.id == optionsAssetClass.id
    }
}
