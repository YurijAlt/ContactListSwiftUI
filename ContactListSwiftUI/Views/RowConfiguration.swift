//
//  RowConfiguration.swift
//  ContactListSwiftUI
//
//  Created by SummeR on 16.06.2021.
//

import SwiftUI

struct RowConfiguration: View {
    let content: String
    let imageName: String
    
    var body: some View {
        HStack{
            Image(systemName: imageName)
                .foregroundColor(.blue)
            Text("\(content)")
        }
    }
}

struct RowConfiguration_Previews: PreviewProvider {
    static var previews: some View {
        RowConfiguration(content: "89954354343", imageName: "phone.circle")
    }
}
