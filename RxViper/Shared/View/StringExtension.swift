//
//  StringExtension.swift
//  RxViper
//
//  Created by Mina on 3/14/20.
//  Copyright © 2020 Mina. All rights reserved.
//

import Foundation

extension String {
    var localized: String {
        NSLocalizedString(self, comment: "")
    }
}
