//
//  Json.swift
//  ToyProjectTodoList
//
//  Created by 김정환 on 11/15/23.
//

import Foundation

struct ToDoList : Codable, Identifiable {
    var id : String
    var title : String
    var description : String
    var completed : String
}








