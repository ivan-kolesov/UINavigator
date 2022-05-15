//
//  DetailView.swift
//  UINavigator (iOS)
//
//  Created by Ivan on 15.05.2022.
//

import SwiftUI
import SwiftUINavigator

struct DetailView: View {
    @EnvironmentObject private var navigator: Navigator
    var item: String
    
    var body: some View {
        VStack {
            Button(action: {
                navigator.navigate {
                    DetailView(item: item + ">")
                }
            }, label: {
                Text("Go nest next detail")
            })
            Divider()
            Button(action: {
                navigator.dismiss(to: .view(withId: "List"))
            }, label: {
                Text("Back to list")
            })
        }
        .padding()
        .navBar(
            style: .normal,
            titleView: {
                AnyView(Text(item))
            },
            leadingView: {
                AnyView(
                    LeadingNavigatorView()
                )
            }
        )
    }
}
