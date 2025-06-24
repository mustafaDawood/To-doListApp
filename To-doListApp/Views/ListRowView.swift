//
//  ListRowView.swift
//  To-doListApp
//
//  Created by Mustafa Dawood on 25/06/2025.
//

import SwiftUI

struct ListRowView: View {
    
    let Title: String
    var body: some View {
        HStack{
            Image(systemName: "checkmark.circle")
            Text(Title)
            Spacer()
        }
    }
}

#Preview {
    ListRowView(Title: "First item")
}
