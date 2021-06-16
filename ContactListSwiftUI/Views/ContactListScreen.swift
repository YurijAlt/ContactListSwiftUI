//
//  ContactList.swift
//  ContactListSwiftUI
//
//  Created by SummeR on 14.06.2021.
//

import SwiftUI

struct ContactListScreen: View {
    
    let contactList = Person.getContactList()
    
    var body: some View {
        NavigationView {
            List(contactList) { person in
                NavigationLink(destination: DetailInfoScreen(contact: person)) {
                    Text(person.fullName)
                }
            }
            .navigationBarTitle(Text("Contact List"))
        }
    }
    
}

struct ContactList_Previews: PreviewProvider {
    static var previews: some View {
        ContactListScreen()
    }
}
