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
            List(contactList) { person in
                VStack {
                    HStack {
                        Image(systemName: "phone.circle")
                        Text("\(person.phoneNumber)")
                    }
                    HStack {
                        Image(systemName: "envelope.circle")
                        Text("\(person.email)")
                    }
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
