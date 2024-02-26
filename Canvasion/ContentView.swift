//
//  ContentView.swift
//  Canvasion
//
//  Created by Om Dilip Naik on 2/25/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    var body: some View {
        VStack {
            Model3D(named: "Scene", bundle: realityKitContentBundle)
                .padding(.bottom, 50)

            Text("First Commit")
        }
        .padding()
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
