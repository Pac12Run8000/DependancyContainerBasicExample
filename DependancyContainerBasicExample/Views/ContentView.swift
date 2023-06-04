//
//  ContentView.swift
//  DependancyContainerBasicExample
//
//  Created by Michelle Grover on 6/3/23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var dataService: DataService
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: SecondView()) {
                    Text("shared resource: \(dataService.data)")
                }
                Button("Changing the value of shared resource") {
                    dataService.data = "Norbert Changed me ..."
                }
                .font(.system(size: 24))
                        .foregroundColor(.red)
                        .padding()
                        .background(Color.white)
                        .shadow(color: .gray, radius: 4, x: 0, y: 2)
                
            }
            .navigationTitle("Primary View")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
