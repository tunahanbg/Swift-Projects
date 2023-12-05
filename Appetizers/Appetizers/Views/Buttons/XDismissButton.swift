//
//  XDismissButton.swift
//  Appetizers
//
//  Created by Tunahan Büyükgebiz on 18.10.2023.
//

import SwiftUI

struct XDismissButton: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 25, height: 25)
                .foregroundStyle(.white)
                .opacity(0.6)
            Image(systemName: "xmark")
                .imageScale(.small)
                .frame(width: 40, height: 40)
                .foregroundStyle(.black)
        }
    }
}

#Preview {
    XDismissButton()
}
