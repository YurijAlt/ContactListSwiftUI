//
//  DetailInfo.swift
//  ContactListSwiftUI
//
//  Created by SummeR on 14.06.2021.
//

import SwiftUI

struct DetailInfoScreen: View {
    
    let contact: Person
    
    var body: some View {
        VStack {
            Image(systemName: "person.crop.circle")
                .resizable()
                .frame(width: 150, height: 150)
                .opacity(0.4)
            List {
                Section(header: Text("\(contact.fullName)")) {
                }
                HStack {
                    Image(systemName: "phone.circle")
                    Text("\(contact.phoneNumber)")
                }
                HStack {
                    Image(systemName: "envelope.circle")
                    Text("\(contact.email)")
                }
            }
        }
        .navigationBarTitle(Text("Details"))
    }
}

struct DetailInfo_Previews: PreviewProvider {
    static var previews: some View {
        DetailInfoScreen(contact: Person.getContactList()[0])
    }
}
