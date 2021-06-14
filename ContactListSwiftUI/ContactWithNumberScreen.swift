//
//  ContactWithSectionScreen.swift
//  ContactListSwiftUI
//
//  Created by SummeR on 14.06.2021.
//

import SwiftUI

struct ContactWithNumberScreen: View {
    var body: some View {
        Image(systemName: "person.crop.rectangle")
            .resizable()
            .frame(width: 300, height: 250)
            .opacity(0.1)
        
    }
}

struct ContactWithSectionScreen_Previews: PreviewProvider {
    static var previews: some View {
        ContactWithNumberScreen()
    }
}
