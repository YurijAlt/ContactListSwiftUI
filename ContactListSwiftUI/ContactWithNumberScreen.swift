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
        ZStack {
            Image(systemName: "person.crop.rectangle")
                .resizable()
                .frame(width: 300, height: 250)
                .opacity(0.1)
            List {
                ForEach(contactList) { person in
                    Text(person.fullName)
                }
            }
        }
        
    }
}

struct ContactWithSectionScreen_Previews: PreviewProvider {
    static var previews: some View {
        ContactWithNumberScreen()
    }
}
