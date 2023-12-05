//
//  AppetizerTabView.swift
//  Appetizers
//
//  Created by Tunahan Büyükgebiz on 14.10.2023.
//

import SwiftUI

struct AppetizerTabView: View {
    
    var body: some View {
        
        TabView {
            AppetizerListView()
                .tabItem { Label("Home", systemImage: "house") }
            
            AccountView()
                .tabItem { Label("Account", systemImage: "person") }
            
            OrderView()
                .tabItem { Label("Order", systemImage: "bag") }
                
        }
        .tint(Color.brandPrimary)
    }
}

#Preview {
    AppetizerTabView()
}

