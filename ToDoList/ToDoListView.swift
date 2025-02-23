//
//  ToDoListView.swift
//  ToDoList
//
//  Created by Robert Delikat on 2/22/25.
//

import SwiftUI

struct ToDoListView: View {
    var body: some View {
        NavigationStack {
            List {
                Section {
                    NavigationLink {
                        DetailView()
                    } label: {
                        Text("Winter")
                    }
                    Text("Summer")
                } header: {
                    Text("Breaks")
                }
                Section {
                    Text("Spring")
                    Text("Fall")
                } header: {
                    Text("Semesters")
                }
            }
            .navigationBarTitle("School Year")
            //Optional display modes
            //.navigationBarItems(trailing: EditButton())
            //.navigationBarTitleDisplayMode(.inline)
            .navigationBarTitleDisplayMode(.automatic) // if not included, it's the default
            .listStyle(.automatic) // if not included, it's the default
        }
    }
}

#Preview {
    ToDoListView()
}
