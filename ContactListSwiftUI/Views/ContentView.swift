//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by SummeR on 14.06.2021.
//

import SwiftUI

struct ContentView: View {
    
    private let contactList = Person.getContactList()
    
    var body: some View {
        TabView {
            ContactListView(contacts: contactList)
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Contacts")
                }
            ContactWithNumberView(contacts: contactList)
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
