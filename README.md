## FloatingTextField with Dynamic Clear Button in UIKit

This `MainViewController` example demonstrates how to set up a floating text field in UIKit without using Storyboards. The custom `FloatingTextField` includes a dynamic clear button, which appears whenever there’s text in the field and hides automatically when the field is empty.

https://github.com/user-attachments/assets/c643790e-e2b8-432b-9e2e-d571b581f5f8

### Features

- **Floating Placeholder:**  
  - The `FloatingTextField` includes a placeholder that floats above the text when editing begins.

- **Dynamic Clear Button:**  
  - The clear button shows up only when there is text in the field.
  - When the text field is empty, the button hides automatically.
  - If the user clears all text, the text field becomes the first responder again.

- **Custom Styling:**  
  - The text field is customizable with rounded borders, a specified height, custom border width, and color, making it adaptable to various app themes.

### Example Implementation

Below is a basic implementation to get you started:

```swift
private let textField: FloatingTextField = {
    let textField = FloatingTextField()
    textField.placeholder = "Enter text here"
    textField.translatesAutoresizingMaskIntoConstraints = false
    textField.textColor = UIColor.black
    textField.font = UIFont.systemFont(ofSize: 14, weight: .regular)
    textField.heightAnchor.constraint(greaterThanOrEqualToConstant: 37).isActive = true
    textField.borderStyle = .roundedRect
    textField.autocorrectionType = .no
    textField.isAccessibilityElement = true
    textField.borderWidth = 0.3
    textField.borderColor = .black
    textField.layer.cornerRadius = 4
    return textField
}()
```
