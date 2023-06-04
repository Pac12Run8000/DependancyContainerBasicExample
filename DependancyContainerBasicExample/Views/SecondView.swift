//
//  SecondView.swift
//  DependancyContainerBasicExample
//
//  Created by Michelle Grover on 6/3/23.
//

import SwiftUI

struct SecondView: View {
    @EnvironmentObject var dataService: DataService
    var body: some View {
        VStack {
            Text("Content of Second View: \(dataService.data)")
            Button("Changing the value back") {
                dataService.data = "Hello World"
            }
            .foregroundColor(.red)
            .padding()
            .background(Color.white)
            .shadow(color: .gray, radius: 4, x: 0, y: 2)
                }
                .navigationTitle("Second View")
        
    }
}
