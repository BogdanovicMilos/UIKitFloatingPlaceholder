//
//  MainViewController.swift
//  UIKitFloatingPlaceholder
//
//  Created by Milos Bogdanovic on 10/30/24.
//

import UIKit

class MainViewController: UIViewController {
    
    // MARK: - Properties
    
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
        
    // MARK: - UIViewController lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
    }
    
    // MARK: - TextField Actions
    
    @objc private func textFieldDidChange(_ textField: UITextField) {
        if let text = textField.text, !text.isEmpty {
            self.textField.addClearButton(isVisible: true)
        } else {
            self.textField.addClearButton(isVisible: false)
            textField.becomeFirstResponder()
        }
    }
    
    // MARK: - Private API
    
    private func setup() {
        view.backgroundColor = .white
        view.addSubview(textField)
        
        textField.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
        textField.addClearButton(isVisible: false)
        
        NSLayoutConstraint.activate([
            textField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textField.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            textField.widthAnchor.constraint(equalToConstant: 300),
            textField.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
}
