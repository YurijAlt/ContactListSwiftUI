//
//  DetailInfo.swift
//  ContactListSwiftUI
//
//  Created by SummeR on 14.06.2021.
//

import SwiftUI

struct DetailInfoView: View {
    
    let contact: Person
    
    var body: some View {
        Form {
            HStack {
                Spacer()
                Image(systemName: "person.crop.circle")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .padding()
                Spacer()
            }
            RowConfiguration(
                content: "\(contact.phoneNumber)",
                imageName: "phone.circle"
            )
            RowConfiguration(
                content: "\(contact.email)",
                imageName: "envelope.circle"
            )
        }
        .navigationBarTitle(Text("\(contact.fullName)"))
    }
}

struct DetailInfo_Previews: PreviewProvider {
    static var previews: some View {
        DetailInfoView(contact: Person.getContactList().first!)
    }
}
