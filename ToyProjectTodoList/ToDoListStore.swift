//
//  ToDoListStore.swift
//  ToyProjectTodoList
//
//  Created by 김정환 on 11/15/23.
//

import Foundation
import Combine

class ToDoListStore : ObservableObject {
    @Published var ToDoLists : [ToDoList]
    
    init(ToDoLists: [ToDoList] = []) {
        self.ToDoLists = ToDoLists
    }
}











