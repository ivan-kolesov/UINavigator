//
//  ContentView.swift
//  Shared
//
//  Created by Ivan on 15.05.2022.
//

import SwiftUI
import SwiftUINavigator

struct ContentView: View {
    @EnvironmentObject private var navigator: Navigator
    
    var body: some View {
        VStack {
            Button(action: {
                navigator.navigate(type: .push(id: "List")) {
                    ListView()
                }
            }, label: {
                Text("Go list view")
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
