# Swift iOS Development Projects

[![iOS](https://img.shields.io/badge/Platform-iOS-blue.svg)](https://developer.apple.com/ios/)
[![iOS](https://img.shields.io/badge/iOS-17.0%2B-blue.svg)](https://developer.apple.com/ios/)
[![Swift](https://img.shields.io/badge/Language-Swift_5.9-orange.svg)](https://swift.org/)
[![Xcode](https://img.shields.io/badge/Xcode-15.0%2B-blue.svg)](https://developer.apple.com/xcode/)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

This repository contains three different iOS applications developed using SwiftUI and UIKit. Each project is designed to learn different technologies and frameworks in the iOS development process.

## 📱 Projects

### 1. Appetizers - Food Ordering App
### 2. BarcodeScanner - Barcode Reader App  
### 3. Apple Frameworks - Framework Introduction App

---

## 🍽️ Appetizers

A fully-featured restaurant application that simulates the food ordering experience using mock data.

### ✨ Features

- **Home Screen**: View available dishes and access their details
- **Account Management**: Create and edit user profiles
- **Order Tracking**: Cart management and order summary
- **Detail View**: Food photos, descriptions, and nutritional information
- **Data Persistence**: Save user information with UserDefaults
- **Network Integration**: Fetch appetizers from remote API
- **Image Caching**: Efficient image loading and caching system

### 🛠️ Technologies Used

- **SwiftUI**: Modern UI framework
- **MVVM Architecture**: Model-View-ViewModel architectural pattern
- **URLSession**: For network requests
- **NSCache**: Image caching system
- **UserDefaults**: Local data storage
- **JSONDecoder/JSONEncoder**: JSON data processing
- **RegexBuilder**: Email validation
- **Async/Await**: Modern concurrency handling

### 📁 Project Structure

```
Appetizers/
├── Model/
│   ├── Appetizer.swift          # Food data model
│   └── User.swift               # User data model
├── Screens/
│   ├── AppetizerListView/       # Home screen
│   ├── AccountView/             # Account management
│   └── OrderView/               # Order screen
├── Views/
│   ├── Buttons/                 # Custom button components
│   ├── Cells/                   # List cells
│   ├── Image/                   # Image management
│   └── Empty States/            # Empty state views
├── Utilities/
│   ├── Managers/                # Network manager
│   ├── Alerts/                  # Alert system
│   └── Extensions/              # Swift extensions
└── Assets.xcassets              # Visual resources
```

### 🔧 Core Components

#### Network Manager
```swift
final class NetworkManager {
    static let shared = NetworkManager()
    private let cache = NSCache<NSString, UIImage>()
    
    func getAppetizers(completed: @escaping (Result<[Appetizer], APError>) -> Void)
    func downloadImage(fromURLString urlString: String, completed: @escaping (UIImage?) -> Void)
}
```

#### Appetizer Model
```swift
struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}
```

---

## 📷 BarcodeScanner

A modern barcode scanner application that can read EAN-8 and EAN-13 format barcodes using the AVFoundation framework.

### ✨ Features

- **Real-time Scanning**: Barcode reading with live camera view
- **Format Support**: EAN-8 and EAN-13 barcode formats
- **Result Display**: Show scanned barcode number on screen
- **Error Handling**: User-friendly messages for camera and scanning errors
- **Modern UI**: Clean and minimal interface designed with SwiftUI
- **Permission Management**: Proper camera access handling

### 🛠️ Technologies Used

- **SwiftUI**: UI framework
- **AVFoundation**: Camera and media processing
- **UIKit**: For camera controller
- **UIViewControllerRepresentable**: UIKit-SwiftUI bridge
- **MVVM Pattern**: Architectural pattern
- **Delegate Pattern**: Communication between components

### 📁 Project Structure

```
BarcodeScanner/
├── Screens/
│   └── BarcodeScanner/
│       ├── BarcodeScannerView.swift      # Main view
│       └── BarcodeScannerViewModel.swift # ViewModel
├── View/
│   └── UIKit Components/
│       ├── ScannerVC.swift               # UIKit camera controller
│       └── ScannerView.swift             # SwiftUI wrapper
├── Utilities/
│   └── Alert.swift                       # Alert system
└── Assets.xcassets                       # Visual resources
```

### 🔧 Core Components

#### Scanner View Controller
```swift
final class ScannerVC: UIViewController {
    let captureSession = AVCaptureSession()
    var previewLayer: AVCaptureVideoPreviewLayer?
    weak var scannerDelegate: (ScannerVCDelegate)?
    
    // Camera setup and metadata processing
}
```

#### SwiftUI Integration
```swift
struct ScannerView: UIViewControllerRepresentable {
    @Binding var scannedCode: String
    @Binding var alertItem: AlertItem?
    
    func makeUIViewController(context: Context) -> ScannerVC
    func updateUIViewController(_ uiViewController: ScannerVC, context: Context)
}
```

### 📋 Supported Barcode Formats

- **EAN-8**: 8-digit European Article Number
- **EAN-13**: 13-digit European Article Number

---

## 🍎 Apple Frameworks

An interactive guide application that introduces the frameworks Apple offers to developers.

### ✨ Features

- **Framework Gallery**: Grid view of Apple frameworks
- **Detailed Information**: Description and features for each framework
- **Web Integration**: Redirect to official Apple documentation
- **Modern Navigation**: SwiftUI NavigationStack usage
- **Responsive Design**: Adaptive design for different screen sizes
- **Interactive Elements**: Smooth animations and transitions

### 🛠️ Technologies Used

- **SwiftUI**: Complete UI framework
- **SafariServices**: In-app web browsing
- **LazyVGrid**: Performant grid layout
- **NavigationStack**: Modern navigation system
- **UIViewControllerRepresentable**: Safari integration

### 📁 Project Structure

```
Apple-Frameworks/
├── Model/
│   └── Framework.swift                    # Framework data model
├── Screens/
│   ├── FrameworkGridView/                # Main grid view
│   └── FrameworkDetailView/              # Detail page
├── Views/
│   ├── Buttons/                          # Custom buttons
│   └── View/                            # Reusable views
├── UIKit Components/
│   └── SafariView.swift                  # Safari web view
└── Assets.xcassets                       # Framework logos
```

### 🔧 Core Components

#### Framework Model
```swift
struct Framework: Hashable, Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
    let urlString: String
    let description: String
}
```

#### Grid Layout
```swift
LazyVGrid(columns: viewModel.columns) {
    ForEach(MockData.frameworks) { framework in
        NavigationLink(value: framework) {
            FrameworkTitleView(framework: framework)
        }
    }
}
```

### 📚 Covered Frameworks

- **App Clips**: Fast app experiences
- **ARKit**: Augmented reality
- **CarPlay**: Car integration
- **CloudKit**: iCloud data storage
- **Core ML**: Machine learning
- **HealthKit**: Health and fitness
- **Metal**: GPU programming
- **SiriKit**: Siri integration
- **SwiftUI**: Declarative UI
- **WidgetKit**: Widget development
- And many more...

---

## 🚀 Installation and Setup

### Requirements

[![iOS](https://img.shields.io/badge/iOS-17.0%2B-blue.svg)](https://developer.apple.com/ios/)
[![Swift](https://img.shields.io/badge/Swift-5.9%2B-orange.svg)](https://swift.org/)
[![Xcode](https://img.shields.io/badge/Xcode-15.0%2B-blue.svg)](https://developer.apple.com/xcode/)

### Installation Steps

1. **Clone the repository:**
```bash
git clone https://github.com/yourusername/swift-ios-projects.git
cd swift-ios-projects
```

2. **Open desired project:**
```bash
# For Appetizers
open Appetizers/Appetizers.xcodeproj

# For BarcodeScanner  
open BarcodeScanner/BarcodeScanner.xcodeproj

# For Apple Frameworks
open Apple-Frameworks/Apple-Frameworks.xcodeproj
```

3. **Build and run the project** (⌘+R)

### 📱 Additional Setup for BarcodeScanner

Since BarcodeScanner requires camera access:

1. **Camera permission** is already defined in **Info.plist**:
```xml
<key>NSCameraUsageDescription</key>
<string>We need to use the camera to scan barcode.</string>
```

2. **Physical device** is recommended (Simulator doesn't support camera)

---

## 📖 Learning Topics

### SwiftUI Fundamentals
- **Declarative UI**: Modern UI development approach
- **State Management**: @State, @StateObject, @ObservableObject
- **Data Binding**: @Binding and data flow
- **Navigation**: NavigationStack and NavigationLink

### Architecture Patterns
- **MVVM**: Model-View-ViewModel pattern
- **Separation of Concerns**: Code organization
- **Protocol-Oriented Programming**: Leveraging Swift's power

### iOS Frameworks
- **AVFoundation**: Camera and media processing
- **SafariServices**: In-app web browsing  
- **UserDefaults**: Local data persistence
- **URLSession**: Network operations

### Advanced Concepts
- **Generic Programming**: Type-safe code writing
- **Error Handling**: Result type and error propagation
- **Image Caching**: Memory management
- **Custom UI Components**: Reusable views

---

## 🎯 Development Notes

### Best Practices

1. **Code Organization**: Each project follows MVVM architecture
2. **Error Handling**: Comprehensive error management
3. **Memory Management**: Automatic reference counting optimization
4. **UI/UX**: Native iOS design patterns
5. **Performance**: LazyVGrid and image caching optimizations

### Potential Improvements

- **Core Data** integration (local database)
- **Unit Testing** coverage
- **Combine Framework** reactive programming
- **Async/Await** modern concurrency
- **Widget Extension** support
- **CloudKit** synchronization
- **Accessibility** enhancements

---

## 📸 Screenshots

### Appetizers App
- Home screen with appetizer list
- Detailed appetizer view with nutritional info
- User account management
- Order cart functionality

### BarcodeScanner App
- Live camera preview
- Barcode detection overlay
- Scan result display
- Error handling alerts

### Apple Frameworks App
- Framework grid layout
- Interactive framework cards
- Detailed framework information
- Safari web view integration

---

## 🧪 Testing

Each project includes:
- **Unit Tests**: Model and business logic testing
- **UI Tests**: User interface automation testing
- **Integration Tests**: Network and data flow testing

Run tests using:
```bash
⌘+U  # Run all tests
⌘+Shift+U  # Run tests with coverage
```

---

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.


## 📚 Resources

- [Apple Developer Documentation](https://developer.apple.com/documentation/)
- [SwiftUI Tutorials](https://developer.apple.com/tutorials/swiftui)
- [AVFoundation Programming Guide](https://developer.apple.com/library/archive/documentation/AudioVideo/Conceptual/AVFoundationPG/Articles/00_Introduction.html)
- [iOS Human Interface Guidelines](https://developer.apple.com/design/human-interface-guidelines/ios/)
- [Swift.org](https://swift.org/)
