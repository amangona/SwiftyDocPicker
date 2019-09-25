# SwiftyDocPicker
A very "Swifty" approach to picking documents. Document selection had never been easier.

![documents](./screenshots/documents.jpeg)

## Usage
Its as simple as conforming to the DocumentDelegate
```swift
class ViewController: UIViewController, DocumentDelegate {
```
Initializing a DocumentPicker
```swift
var documentPicker: DocumentPicker!

 override func viewDidLoad() {
    super.viewDidLoad()
    documentPicker = DocumentPicker(presentationController: self, delegate: self)
 }
 ```
 Presenting the picker
 ```swift
 documentPicker.present(from: view)
 ```
 And responding to the delegate function
 ```swift
 func didPickDocuments(documents: [Document]) {
        // handle selected documents
 }
 ```
 Read more on [Medium](https://medium.com/@abrahammangona/a-swifty-way-to-pick-documents-59cad1988a8a)
