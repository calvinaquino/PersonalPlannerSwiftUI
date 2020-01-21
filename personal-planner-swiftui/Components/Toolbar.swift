//
//  Toolbar.swift
//  personal-planner-swiftui
//
//  Created by Calvin Aquino on 2020-01-20.
//  Copyright © 2020 Aquino. All rights reserved.
//

import SwiftUI

struct Toolbar<Content>: View where Content : View {
    
    init(@ViewBuilder content: @escaping () -> Content) {
        self.content = content
    }
    
    var content: () -> Content
    
    var body: some View {
        ZStack {
            Color.gray
            HStack {
                self.content()
            }
            .padding(16)
        }
        .frame(width: nil, height: 50, alignment: .center)
    }
}

struct Toolbar_Previews: PreviewProvider {
    static var previews: some View {
        Toolbar {
            Button(action: {}) {
                Image(systemName: "square.filled")
            }
            Spacer()
            Button(action: {}) {
                Image(systemName: "square")
            }
        }
    }
}
