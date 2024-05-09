//
//  ItemModel.swift
//  TodoAppSwiftUI
//
//  Created by Macbook Pro on 07/05/2024.
//

import Foundation
struct ItemModel:Identifiable,Codable{
    let title:String
    let IsCompleted:Bool
    let id: String
    init(title: String, IsCompleted: Bool, id: String = UUID().uuidString) {
        self.title = title
        self.IsCompleted = IsCompleted
        self.id = id
    }
    func updateCompleted() -> ItemModel{
        return ItemModel(title: title, IsCompleted: !IsCompleted, id: id)
    }
}
