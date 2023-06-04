//
//  DataService.swift
//  DependancyContainerBasicExample
//
//  Created by Michelle Grover on 6/3/23.
//

import SwiftUI

class DataService: ObservableObject {
    @Published var data: String = "Hello, World!"
}
