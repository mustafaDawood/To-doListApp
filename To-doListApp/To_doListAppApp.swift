//
//  To_doListAppApp.swift
//  To-doListApp
//
//  Created by Mustafa Dawood on 25/06/2025.
//

import SwiftUI

@main
struct To_doListAppApp: App {
    
    @StateObject var listViewModel : ListViewModel = ListViewModel()
    
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ListView()
            }.environmentObject(ListViewModel())
        }
    }
}
