//
//  AddTaskView.swift
//  To-doListApp
//
//  Created by Mustafa Dawood on 25/06/2025.
//

import SwiftUI

struct AddTaskView: View {
    @State var text : String = ""
    
    var body: some View {
        ScrollView{
            VStack{
                TextField("Type something here...", text: $text)
                    .frame(height:55)
                    .padding(.horizontal)
                    .background(Color(uiColor:.placeholderText))
                    .cornerRadius(10)
                Button(action: {
                    
                }, label: {
                    Text("Save")
                        .foregroundColor(.white)
                        .frame(height: 55)
                        .frame(maxWidth:.infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                })

            }
            .padding(14)
        }.navigationTitle("Add Task 🖋️")
    }
}

#Preview {
    NavigationView{
        AddTaskView()
    }

}
