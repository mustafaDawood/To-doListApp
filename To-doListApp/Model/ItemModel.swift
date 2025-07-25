//
//  ItemModel.swift
//  To-doListApp
//
//  Created by Mustafa Dawood on 05/07/2025.
//

import Foundation

struct ItemModel: Identifiable, Codable{
    let id : String
    let title : String
    let isCompleted : Bool
    
    init(id: String = UUID().uuidString, title: String, isCompleted: Bool) {
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func updateCompletion ()-> ItemModel {
        return ItemModel(id: id, title: title, isCompleted: !isCompleted)
    }
}
