//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by SummeR on 14.06.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ContactListScreen()
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Contacts")
                }
            ContactWithNumberScreen()
                .tabItem {
                    Image(systemName: "person.crop.rectangle")
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
