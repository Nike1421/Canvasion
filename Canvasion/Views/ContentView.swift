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
    var userSettings: UserSettingsModel
    
    @State var isLoading: Bool = true
    @State var courses: [Course] = []
    
    func fetchCourses() async {
        isLoading = true
        do {
            print("IHIHIH")
            let response = try await APIClient.fetchCourses(
                apiKey: userSettings.canvasAPIKey,
                useMockData: userSettings.useMockStockData)
            print("Successfully fetched stocks", Date())
            courses = response.courses
            isLoading = false
        } catch {
            print("Unable to fetch courses", error)
        }
    }
    
    let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 4)
    
    var body: some View {
        
        NavigationStack{
            LazyVGrid(columns: columns){
                if isLoading {
                    ProgressView()
                } else {
                    ForEach(courses , id: \.self)
                    {
                        item in
                        NavigationLink(value: item.course_id){
                            CustomCourseButton(courseName: item.imageName)
                        }
                    }
                    }
                }.navigationTitle("Canvas Application")
                .padding()
                .task{
        
                    await fetchCourses()
            }
                
        }
    }
}

#Preview(windowStyle: .automatic) {
    
        let previewUserSettings: UserSettingsModel = UserSettingsModel()
        ContentView(userSettings: previewUserSettings)
    
    
}
