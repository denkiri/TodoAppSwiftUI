//
//  ListRowView.swift
//  TodoAppSwiftUI
//
//  Created by Macbook Pro on 09/05/2024.
//

import SwiftUI

struct ListRowView: View {
    let item:ItemModel
    var body: some View {
        HStack{
            Image(systemName: item.IsCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(item.IsCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }.font(.title2)
            .padding(.vertical,8)
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var item1 = ItemModel(title: "Item1", IsCompleted: true)
    static var item2 = ItemModel(title: "Item1", IsCompleted: false)
    static var previews: some View {
        Group{
            ListRowView(item: item1)
            ListRowView(item: item2)
        }.previewLayout(.sizeThatFits)
       
    }
}
