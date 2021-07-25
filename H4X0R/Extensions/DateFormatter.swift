//
//  DateFormatter.swift
//  H4X0R
//
//  Created by Argenis De La Rosa on 7/24/21.
//  Copyright © 2021 argenis delarosa. All rights reserved.
//

import Foundation

extension DateFormatter {
    convenience init(dateStyle: DateFormatter.Style, timeStyle: DateFormatter.Style) {
        self.init()
        self.dateStyle = dateStyle
        self.timeStyle = timeStyle
    }
}
