//
//  APIResponses.swift
//  Canvasion
//
//  Created by Om Dilip Naik on 3/3/24.
//

import Foundation

struct CourseResponse: Codable{
    let courses: [Course]
}

struct Course: Hashable, Codable {
//    var id = UUID()
    let course_name: String
    let course_id: Int
    let imageName: String
}

//extension Course {
//    
//    struct Key {
//        static let id = "id"
//        static let courseName = "courseName"
//        static let imageName = "avatarName"
//    }
//    
//    init?(dictionary: [String: String]) {
//            guard let idNumber = dictionary[Key.id],
//                  let courseNameString = dictionary[Key.courseName] else { return nil }
//            
//            self.id = Int(idNumber)!
//                    self.courseName = courseNameString
//
//            
//            if let imageName = dictionary[Key.imageName] {
//                self.imageName = imageName
//            } else {
//                self.imageName = "Default"
//            }
//        
//        }
//}

