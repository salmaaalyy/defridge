//
//  FridgeView.swift
//  De-Fridge
//
//  Created by Salma Aly on 10/22/22.
//

import SwiftUI

struct Item : Identifiable {
    let name: String
    let expiration: String
    let id = UUID()
}

struct Category : Identifiable {
    let name: String
    let items: [Item]
    let id = UUID()
}

struct Fridge{
    var items : [Category]
}

var foods = Fridge(items: [
    Category(name: "Dairy", items: [
        Item(name: "Greek yogurt", expiration: "3 days"),
        Item(name: "Butter", expiration: "5 days"),
        Item(name: "Whole milk", expiration: "1 week"),
        Item(name: "Dozen eggs", expiration: "12 days"),
        Item(name: "Cheese", expiration: "3 weeks"),
    ]),
    Category(name: "Produce", items: [
        Item(name: "Parsley", expiration: "1 day"),
        Item(name: "Lettuce", expiration: "2 days"),
        Item(name: "Tomatoes", expiration: "1 week"),
    ]),
    Category(name: "Fruit", items: [
        Item(name: "Plums", expiration: "2 days"),
        Item(name: "Grapes", expiration: "6 days"),
        Item(name: "Apples", expiration: "13 days"),
    ]),
    Category(name: "Drinks", items: [
        Item(name: "Orange juice", expiration: "2 weeks"),
        Item(name: "Pepsi soda", expiration: "1 month"),
    ]),
    Category(name: "Other", items: [
        Item(name: "Leftover pizza", expiration: "12 hours"),
        Item(name: "Steak", expiration: "2 days"),
    ])
])

struct FridgeView: View {
    var body: some View {
        NavigationView{
            List {
                ForEach(foods.items) { category in
                     Section(header: Text(category.name)) {
                         ForEach(category.items) { item in
                            FoodList(item: item)
                         }
                     }
                 }
                // .onDelete(perform: delete)
             }
            .navigationTitle("Items in fridge")
            .toolbar {EditButton()}
        }
    }
}

struct FoodList : View{
    var item: Item
    
    var body: some View{
        VStack(alignment: .leading, spacing: 3){
            Text(item.name)
                .foregroundColor(.primary)
                .font(.headline)
            HStack(spacing: 3){
                Text(item.expiration)
                    .foregroundColor(.red)
                    .font(.subheadline)
            }
        }
    }
}

//func delete(at offsets: IndexSet){
//    foods.remove(atOffsets: offsets)
//}

struct FridgeView_Previews: PreviewProvider {
    static var previews: some View {
        FridgeView()
    }
}
