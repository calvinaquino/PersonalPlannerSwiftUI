//
//  SearchBar.swift
//  personal-planner-swiftui
//
//  Created by Calvin Gonçalves de Aquino on 1/20/20.
//  Copyright © 2020 Aquino. All rights reserved.
//

import SwiftUI


struct SearchBar : View {
    @State var searchText: String = ""
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass").foregroundColor(.secondary)
            TextField("Search", text: self.$searchText)
            Button(action: {
                self.searchText = ""
            }) {
              Image(systemName: "xmark.circle.fill").foregroundColor(.secondary).opacity(searchText == "" ? 0.0 : 1.0)
            }
        }
        .padding(.horizontal)
        .frame(width: nil, height: 50, alignment: .center)
    }
}

let searchText = "query"
struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
      SearchBar(searchText: searchText)
    }
}
