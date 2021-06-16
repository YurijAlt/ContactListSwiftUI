//
//  ContactWithSectionScreen.swift
//  ContactListSwiftUI
//
//  Created by SummeR on 14.06.2021.
//

import SwiftUI

struct ContactWithNumberScreen: View {
    
    let contactList = Person.getContactList()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(contactList) { person in
                    Section(header: Text("\(person.fullName)"), content: {})
                    RowConfiguration(content: "\(person.phoneNumber)", imageName: "phone.circle")
                    RowConfiguration(content: "\(person.email)", imageName: "envelope.circle")
                }
            }
            .navigationBarTitle(Text("Contact List"))
        }
    }
}

struct ContactWithSectionScreen_Previews: PreviewProvider {
    static var previews: some View {
        ContactWithNumberScreen()
    }
}
