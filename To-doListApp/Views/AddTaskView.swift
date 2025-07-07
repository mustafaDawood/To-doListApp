//
//  AddTaskView.swift
//  To-doListApp
//
//  Created by Mustafa Dawood on 25/06/2025.
//

import SwiftUI

struct AddTaskView: View {
    @State var textFieldText : String = ""
    @EnvironmentObject var listViewModel : ListViewModel
    @Environment(\.presentationMode) var presenationMode
    
    var body: some View {
        ScrollView{
            VStack{
                TextField("Type something here...", text: $textFieldText)
                    .frame(height:55)
                    .padding(.horizontal)
                    .background(Color(uiColor:.placeholderText))
                    .cornerRadius(10)
                Button(action: saveButtonPressed, label: {
                    Text("Save")
                        .foregroundColor(.white)
                        .frame(height: 55)
                        .frame(maxWidth:.infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                        .disabled(textFieldText.count < 3 )
                })

            }
            .padding(14)
        }.navigationTitle("Add Task 🖋️")
    }
    
    func saveButtonPressed () {
        listViewModel.addItem(title: textFieldText)
        presenationMode.wrappedValue.dismiss()
    }
}

#Preview {
    NavigationView{
        AddTaskView()
    }.environmentObject(ListViewModel())

}
