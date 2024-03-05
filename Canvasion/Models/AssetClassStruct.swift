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

var assignmentAssetClass = AssetClassStruct(title: "Assignments")
var filesAssetClass = AssetClassStruct(title: "Files")
var optionsAssetClass = AssetClassStruct(title: "Options")

extension AssetClassStruct {

    static var listAll: [AssetClassStruct] {
        [
         assignmentAssetClass,
         filesAssetClass,
         optionsAssetClass
        ]
    }

    static var assignments: AssetClassStruct {
        return assignmentAssetClass
    }

    static var files: AssetClassStruct {
        return filesAssetClass
    }

    static var options: AssetClassStruct {
        return optionsAssetClass
    }

    // TODO: better way?
    var isAssignments: Bool {
        return self.id == assignmentAssetClass.id
    }

    var isFiles: Bool {
        return self.id == filesAssetClass.id
    }

    var isOptions: Bool {
        return self.id == optionsAssetClass.id
    }
}
