//
//  ContactWithSectionScreen.swift
//  ContactListSwiftUI
//
//  Created by SummeR on 14.06.2021.
//

import SwiftUI

struct ContactWithNumberView: View {
    
    let contacts: [Person]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(contacts) { person in
                    Section(header: Text(person.fullName)) {
                        RowConfiguration(
                            content: "\(person.phoneNumber)",
                            imageName: "phone.circle"
                        )
                        RowConfiguration(
                            content: "\(person.email)",
                            imageName: "envelope.circle"
                        )
                    }
                }
                .textCase(.none)
            }
            .navigationBarTitle(Text("Contact List"))
        }
    }
}

struct ContactWithSectionScreen_Previews: PreviewProvider {
    static var previews: some View {
        ContactWithNumberView(contacts: Person.getContactList())
    }
}
