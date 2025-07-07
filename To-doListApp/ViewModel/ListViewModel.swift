//
//  ListViewModel.swift
//  To-doListApp
//
//  Created by Mustafa Dawood on 07/07/2025.
//

import Foundation

class ListViewModel : ObservableObject {
    @Published var items : [ItemModel] = [] {
        didSet { saveItem() }
    }
    
    var itemsKey = "itemsKey"
    
    
    init() {
        getItems()
    }
    
    func getItems () {
        if let data = UserDefaults.standard.data(forKey: itemsKey) {
            if let savedData = try? JSONDecoder().decode([ItemModel].self, from: data){
                self.items = savedData
            }
        }
    }
    
    func deleteItems (indexset : IndexSet) {
        items.remove(atOffsets: indexset)
    }
    
    func moveItems (from : IndexSet, to : Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
    
    func addItem (title : String) {
        let newItem = ItemModel(title: title, isCompleted: false)
        items.append(newItem)
    }
    
    func updateItem (item:ItemModel){
        if let index = items.firstIndex(where: {$0.id == item.id}){
            items[index] = item.updateCompletion()
        }
    }
    
    func saveItem (){
        if let encodedData = try? JSONEncoder().encode(items) {
            UserDefaults.standard.setValue(encodedData, forKey: itemsKey)
        }
    }
}
