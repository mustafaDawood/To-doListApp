//
//  ListViewModel.swift
//  To-doListApp
//
//  Created by Mustafa Dawood on 07/07/2025.
//

import Foundation

class ListViewModel : ObservableObject {
    @Published var items : [ItemModel] = []
    
    
    init() {
        getItems()
    }
    
    func getItems () {
        let newItems = [
            ItemModel(title: "first task", isCompleted: true),
            ItemModel(title: "Second task", isCompleted: false),
            ItemModel(title: "Third", isCompleted: false)
        ]
        items.append(contentsOf: newItems)
    }
    
    func deleteItems (indexset : IndexSet) {
        items.remove(atOffsets: indexset)
    }
    
    func moveItems (from : IndexSet, to : Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
}
