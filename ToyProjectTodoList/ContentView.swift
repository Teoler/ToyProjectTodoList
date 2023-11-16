//
//  ContentView.swift
//  ToyProjectTodoList
//
//  Created by 김정환 on 11/14/23.
//
import SwiftUI

struct ContentView: View {
    @StateObject var todolistStore : ToDoListStore = ToDoListStore(ToDoLists: ToDoListData)
    var body: some View {
        List {
            ForEach (0..<todolistStore.ToDoLists.count, id: \.self){ i in
                HStack {
                    if todolistStore.ToDoLists[i].completed == true {
                        Image(systemName: "checkmark.circle.fill")
                    }
                    else {
                        Image(systemName: "checkmark.circle")
                    }
                    Text(todolistStore.ToDoLists[i].title)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
