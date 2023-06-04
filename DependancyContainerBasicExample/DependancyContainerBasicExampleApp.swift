//
//  DependancyContainerBasicExampleApp.swift
//  DependancyContainerBasicExample
//
//  Created by Michelle Grover on 6/3/23.
//

import SwiftUI

@main
struct DependancyContainerBasicExampleApp: App {
    let dataService = DataService()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(dataService)
//            SecondView()
//                .environmentObject(dataService)
        }
    }
}
