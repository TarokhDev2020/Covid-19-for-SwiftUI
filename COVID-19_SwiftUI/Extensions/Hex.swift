//
//  Hex.swift
//  COVID-19_SwiftUI
//
//  Created by Tarokh on 9/18/20.
//  Copyright © 2020 Tarokh. All rights reserved.
//

import SwiftUI

extension Color {
    init(hex: Int, alpha: Double = 1) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: alpha
        )
    }

}
