//
//  FactModel.swift
//  Avocado
//
//  Created by Fábio Carvalho on 08/09/2022.
//

import SwiftUI

struct Fact: Identifiable {
    var id = UUID()
    var image: String
    var content: String
}
