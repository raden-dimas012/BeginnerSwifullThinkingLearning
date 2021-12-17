//
//  ListBootcamp.swift
//  BeginnerSwifullThinking
//
//  Created by Raden Dimas on 19/10/21.
//

import SwiftUI

struct ListBootcamp: View {
    
    @State var fruits: [String] = [
    "apple","orange","banana","peach"
    ]
    
    @State var veggies: [String] = [
    "tomato","potato","carrot"
    ]
    
    var body: some View {
        NavigationView {
            List {
                Section(
                    header:
                        HStack {
                            Text("Fruits")
                            Image(systemName: "flame.fill")
                        }
                        .font(.headline)
                        .foregroundColor(.gray)
                        
                ) {
                    ForEach(fruits,id: \.self) { fruit in
                        Text(fruit.capitalized)
                            .font(.caption)
                            .foregroundColor(.white)
//                            .frame(maxWidth: .infinity, maxHeight: .infinity)
//                            .background(Color.pink)
                    }
    //                .onDelete(perform: { indexSet in
    //                    delete(indexSet: indexSet)
    //                })
                    .onDelete(perform: delete)
//                    .onMove(perform: { indices, newOffset in
//                        fruits.move(fromOffsets: indices, toOffset: newOffset)
//                    })
                    .onMove(perform: move)
                    .listRowBackground(Color.blue)
                }
                Section(header: Text("Veggies")) {
                    ForEach(veggies,id: \.self) { veggie in
                        Text(veggie.capitalized)
                    }
    //                .onDelete(perform: { indexSet in
    //                    delete(indexSet: indexSet)
    //                })
                    .onDelete(perform: delete)
//                    .onMove(perform: { indices, newOffset in
//                        fruits.move(fromOffsets: indices, toOffset: newOffset)
//                    })
                    .onMove(perform: move)
                }
            }
            .accentColor(.red)
//            .listStyle(PlainListStyle())
//            .listStyle(SidebarListStyle())
//            .listStyle(GroupedListStyle())
            
            .navigationTitle("Grocery List")
            .navigationBarItems(
                leading: EditButton(),
                trailing: addButton
                )
        }
        .accentColor(.black)
    }
    
    var addButton: some View {
        Button("Add", action: {
            add()
        })
    }
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indices: IndexSet,newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
        
    }
    func add() {
        fruits.append("coconut")
    }
}

struct ListBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListBootcamp()
    }
}
