//
//  ContactList.swift
//  ContactListSwiftUI
//
//  Created by SummeR on 14.06.2021.
//

import SwiftUI

struct ContactListScreen: View {
    var body: some View {
        Image(systemName: "person.3")
            .resizable()
            .frame(width: 300, height: 250)
            .opacity(0.1)
        
    }
}

struct ContactList_Previews: PreviewProvider {
    static var previews: some View {
        ContactListScreen()
    }
}
