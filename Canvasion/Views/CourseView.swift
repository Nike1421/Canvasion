//
//  CourseView.swift
//  Canvasion
//
//  Created by Om Dilip Naik on 3/4/24.
//

import SwiftUI
import RealityKit

struct CourseView: View {
    var userSettings: UserSettingsModel

    private let assetClasses = AssetClassStruct.listAll
    @State private var selectedAssetClass: AssetClassStruct? = AssetClassStruct.assignments

    var body: some View {
        NavigationSplitView {
            List(assetClasses, selection: $selectedAssetClass) { assetClass in
                NavigationLink(value: assetClass) {
                    Text(assetClass.title)
                }
            }
            .navigationTitle("Canvas")
            .navigationSplitViewColumnWidth(min: 270, ideal: 280, max: 300)
        } detail: {
            if let selectedAssetClass {
                Text("Hello World")
            }
        }
    }
}

 #Preview {
     VStack {
         let previewUserSettings: UserSettingsModel = UserSettingsModel()
         CourseView(userSettings: previewUserSettings)
     }
 }
