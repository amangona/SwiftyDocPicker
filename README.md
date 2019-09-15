# SwiftyDocPicker
A very "Swifty" approach to picking documents

## Usage
Its as simple as conforming to a the DocumentDelegate
```
class ViewController: UIViewController, DocumentDelegate {
```
Initializing a DocumentPicker
```
var documentPicker: DocumentPicker!

 override func viewDidLoad() {
    super.viewDidLoad()
    documentPicker = DocumentPicker(presentationController: self, delegate: self)
 }
 ```
 Presenting the picker
 ```
 documentPicker.present(from: view)
 ```
 And responding to the delegate function
 ```
 func didPickDocuments(documents: [Document]) {
        // handle selected documents
 }
 ```
