//
//  String+Extensions.swift
//  NYLE
//
//  Created by Shoug. on 06/05/2023.
//

import Foundation

extension String {
    
    var isEmptyOrWhiteSpace: Bool {
        self.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
    }
}
