//
//  ContactList.swift
//  ContactListSwiftUI
//
//  Created by SummeR on 14.06.2021.
//

import SwiftUI

struct ContactListView: View {
    
    let contacts: [Person]
    
    var body: some View {
        NavigationView {
            List(contacts) { person in
                NavigationLink(destination: DetailInfoView(contact: person)) {
                    Text(person.fullName)
                }
            }
            .navigationBarTitle(Text("Contact List"))
        }
    }
    
}

struct ContactList_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView(contacts: Person.getContactList())
    }
}
