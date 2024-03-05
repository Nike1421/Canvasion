//
//  CustomCourseButton.swift
//  Canvasion
//
//  Created by Om Dilip Naik on 3/3/24.
//

import Foundation
import SwiftUI

struct CustomCourseButton: View {
    var courseName: String
    
    var body: some View {
        VStack {
            Image(courseName)
                            .resizable()
                            .clipShape(Circle())
                            .frame(width: 100, height: 100)
                            .overlay(Circle().stroke(Color.white, lineWidth: 4))
                            .shadow(radius: 10)

//            Text(courseName)
        }
    }
}
