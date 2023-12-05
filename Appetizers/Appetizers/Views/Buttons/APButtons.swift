//
//  APButtons.swift
//  Appetizers
//
//  Created by Tunahan Büyükgebiz on 18.10.2023.
//

import SwiftUI

struct APButtons: View {
    
    let title: LocalizedStringKey
    
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260, height: 50)
            .foregroundStyle(.white)
            .background(Color("brandPrimary"))
            .clipShape(.rect(cornerRadius: 10))
    }
}

#Preview {
    APButtons(title: "Test Title")
}
