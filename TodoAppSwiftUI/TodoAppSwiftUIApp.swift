//
//  TodoAppSwiftUIApp.swift
//  TodoAppSwiftUI
//
//  Created by Macbook Pro on 07/05/2024.
//

import SwiftUI

@main
struct TodoAppSwiftUIApp: App {
    @StateObject var listViewModel:ListViewModel = ListViewModel()
    var body: some Scene {
        WindowGroup{
            NavigationView{
                ListView()
            }.environmentObject(listViewModel)
        }
    }
}
