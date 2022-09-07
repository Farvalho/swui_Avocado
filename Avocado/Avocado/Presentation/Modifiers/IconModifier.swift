//
//  IconModifier.swift
//  Avocado
//
//  Created by Fábio Carvalho on 07/09/2022.
//

import SwiftUI

struct IconModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 42, height: 42, alignment: .center)
    }
}
