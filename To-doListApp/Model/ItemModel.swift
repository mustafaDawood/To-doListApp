//
//  ItemModel.swift
//  To-doListApp
//
//  Created by Mustafa Dawood on 05/07/2025.
//

import Foundation

struct ItemModel: Identifiable {
    let id = UUID()
    let title : String
    let isCompleted : Bool
}
