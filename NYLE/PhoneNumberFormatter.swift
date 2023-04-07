//
//  PhoneNumberFormatter.swift
//  NYLE
//
//  Created by Rema Alnssiry on 07/04/2023.
//

import SwiftUI
struct PhoneNumberFormatter: Formatter {
    func string(for value: Any?) -> String? {
        return value as? String
    }
    
    func getObjectValue(_ obj: AutoreleasingUnsafeMutablePointer<AnyObject?>?, for string: String, errorDescription: AutoreleasingUnsafeMutablePointer<NSString?>?) -> Bool {
        obj?.pointee = string as AnyObject
        return true
    }
    
    func isPartialStringValid(_ partialString: String, newEditingOffset: inout Int?, errorDescription: AutoreleasingUnsafeMutablePointer<NSString?>?) -> Bool {
        let regex = try! NSRegularExpression(pattern: "[0-9]{0,10}", options: [])
        let range = NSRange(location: 0, length: partialString.utf16.count)
        let matches = regex.matches(in: partialString, options: [], range: range)
        return matches.count > 0
    }
}
