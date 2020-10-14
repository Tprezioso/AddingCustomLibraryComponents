//
//  LibraryContent.swift
//  CustomComponentsLibrary
//
//  Created by Thomas Prezioso on 10/13/20.
//

import SwiftUI

struct LibraryContent: LibraryContentProvider {
    @LibraryContentBuilder
    var views: [LibraryItem] {
        LibraryItem(
            CloseButton(),
            category: .control
        )
    }

    @LibraryContentBuilder
    func modifiers(base: Image) -> [LibraryItem] {
        LibraryItem(
            base.customViewStyle(color: Color.red, cornerRadius: 22),
            title: "Custom View Style 1",
            category: .effect
        )
    }
}

extension View {
    func customViewStyle(color: Color, cornerRadius: CGFloat) -> some View {
        return self
            .background(color)
            .cornerRadius(cornerRadius)
            .shadow(color: color.opacity(0.3), radius: 20, x: 0, y: 10)

    }
}
