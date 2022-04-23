//
//  String+.swift
//  LocalizationTest
//
//  Created by Evgenii Loshchenko on 06.03.2021.
//

import Foundation

extension String {
    // MARK: - Properties
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
}
