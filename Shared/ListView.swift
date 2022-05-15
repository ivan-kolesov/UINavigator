//
//  ListView.swift
//  UINavigator (iOS)
//
//  Created by Ivan on 15.05.2022.
//

import SwiftUI
import SwiftUINavigator

struct ListView: View {
    @EnvironmentObject private var navigator: Navigator
    
    let items = ["item1", "item2", "item3"]
    var body: some View {
        VStack {
            List {
                ForEach(items, id:\.self) { item in
                    Button(action: {
                        navigator.navigate {
                            DetailView(item: item)
                        }
                    }, label: {
                        Text("\(item)")
                    })
                }
            }
        }
        .navBar(
            style: .normal,
            titleView: {
                AnyView(Text("List"))
            },
            leadingView: {
                AnyView(
                    LeadingNavigatorView()
                )
            }
        )
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
