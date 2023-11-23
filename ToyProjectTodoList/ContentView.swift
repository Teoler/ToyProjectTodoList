//
//  ContentView.swift
//  ToyProjectTodoList
//
//  Created by 김정환 on 11/14/23.
//
import SwiftUI
import Foundation

struct ContentView: View {
    @StateObject var todolistStore : ToDoListStore = ToDoListStore(ToDoLists: ToDoListData)
//    @State private var addTodolist = []
//    @State var newItem = ""
    
    var body: some View {
        NavigationStack {
            
            List {
//                TextField("추가할 할 일을 입력하세요.", text: $newItem, onCommit: addList)
                ForEach (0..<todolistStore.ToDoLists.count, id: \.self){ i in
                    HStack {
                        //체크마크
                        if todolistStore.ToDoLists[i].completed {
                            Image(systemName: "checkmark.circle.fill")
                        }
                        else {
                            Image(systemName: "checkmark.circle")
                        }
                        // 리스트 타이틀
                        NavigationLink("\(todolistStore.ToDoLists[i].title)", value: todolistStore.ToDoLists[i].description)
                    }
                }
                //리스트 이동 -> 작동안됌
                .onMove(perform: { indices, newOffset in
                    todolistStore.ToDoLists.move(fromOffsets: indices, toOffset: newOffset)
                })
                //리스트 삭제
                .onDelete { indexSet in
                    todolistStore.ToDoLists.remove(atOffsets: indexSet)
                }
                
//                List {
//                    ForEach(0..<addTodolist.count, id: \.self) { i in
//                        if addTodolist[i] == isEmpty {
//                            Text("\(addTodolist[i])")
//                        }
//                    }
//                }
            }
            .navigationTitle("To Do List")
            
        }
        
    }
//    func addList(){
//        self.addTodolist.insert(self.newItem, at:0)
//        self.newItem = ""
//    }
}

//func delete (at offsets: IndexSet){
//    todolistStore.remove(atOffsets: offsets)
//}
//func move(from source: IndexSet, to destination: Int){
//    todolistStore.move(fromOffsets: source, toOffset: destination)
//}



#Preview {
    ContentView()
}
