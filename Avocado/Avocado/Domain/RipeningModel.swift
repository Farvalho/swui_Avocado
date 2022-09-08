//
//  RipeningModel.swift
//  Avocado
//
//  Created by Fábio Carvalho on 08/09/2022.
//

import SwiftUI

struct Ripening: Identifiable {
    var id = UUID()
    var image: String
    var stage: String
    var title: String
    var description: String
    var ripeness: String
    var instruction: String
}
