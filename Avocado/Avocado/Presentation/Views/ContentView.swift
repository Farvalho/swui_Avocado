//
//  ContentView.swift
//  Avocado
//
//  Created by Fábio Carvalho on 07/09/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 0) {
                        HeaderView()
                    } //:HStack
                } //:ScrollView
                
                VStack(alignment: .center, spacing: 20) {
                    Text("All about avocados")
                        .font(.system(.title, design:.serif))
                        .fontWeight(.bold)
                        .foregroundColor(Color("ColorGreenAdaptive"))
                        .padding(8)
                    
                    Text("Everything you wanted to know about avocados but were too afraid to ask!")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.gray)
                    
                } //:VStack
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom, 85)
                
            } //:VStack
        } //:ScrollView
        .edgesIgnoringSafeArea(.all)
        .padding(0)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
