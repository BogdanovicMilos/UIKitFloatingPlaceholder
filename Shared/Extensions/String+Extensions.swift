//
//  String+Extensions.swift
//  UIKitFloatingPlaceholder
//
//  Created by Milos Bogdanovic on 10/30/24.
//

import UIKit

// MARK: - String extension

extension String {
    var isEmptyString: Bool {
        trimmingCharacters(in: NSCharacterSet.whitespaces).isEmpty
    }

    subscript(safe index: Int) -> Character? {
        index < count && index >= 0 ? self[self.index(startIndex, offsetBy: index)] : nil
    }
}
