//
//  Alert.swift
//  BarcodeScanner
//
//  Created by Tunahan Büyükgebiz on 30.09.2023.
//

import SwiftUI


struct AlertItem: Identifiable {
    let id = UUID()
    let title: String
    let massage: String
    let dismissButton: Alert.Button
}


struct AlertContext {
    static let invalidDeviceInput = AlertItem(title: "Invalid Device Input",
                                              massage: "Something is wrong with the camera. We are unable to capture the input.",
                                              dismissButton: .default(Text("OK")))
    
    static let invalidScannedType = AlertItem(title: "Invalid Scan Type",
                                              massage: "The value scanned is not valid. This app only scans EAN-8 and EAN-13",
                                              dismissButton: .default(Text("OK")))
}
