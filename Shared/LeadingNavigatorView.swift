//
//  LeadingNavigatorView.swift
//  UINavigator (iOS)
//
//  Created by Ivan on 15.05.2022.
//

import SwiftUI
import SwiftUINavigator

struct LeadingNavigatorView: View {
    @EnvironmentObject private var navigator: Navigator
    
    var body: some View {
        Button(action: {
            navigator.dismiss()
        }, label: {
            Label("Back", systemImage: "chevron.backward")
                .foregroundColor(.blue)
                .labelStyle(.iconOnly)
        })
    }
}
