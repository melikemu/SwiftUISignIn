//
//  DesignTokens.swift
//  SwiftUISignIn
//
//  Created by Melike Mühür on 19.02.2025.
//

import SwiftUI

struct DesignTokens {
    struct Colors {
        static let primary = Color.blue
        static let background = Color(.systemGray6)
        static let text = Color.primary
        static let buttonText = Color.white
    }

    struct Typography {
        static let title = Font.largeTitle.weight(.bold)
        static let body = Font.body
        static let button = Font.headline.weight(.semibold)
    }

    struct Spacing {
        static let small: CGFloat = 8
        static let medium: CGFloat = 16
        static let large: CGFloat = 24
    }
}
