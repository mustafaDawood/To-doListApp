//
//  ListView.swift
//  To-doListApp
//
//  Created by Mustafa Dawood on 25/06/2025.
//

import SwiftUI

struct ListView: View {
    
    @State var items : [String] = [
    "first items",
    "second item",
    "third item"
    ]
    var body: some View {
        List{
            ForEach(items, id: \.self) { item in
                ListRowView(Title: item)
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Todo List 📝")
        .navigationBarItems(leading: EditButton(), trailing:NavigationLink("Add", destination: AddTaskView()))
    }
}

#Preview {
    NavigationView{
        ListView()
    }
    
}
