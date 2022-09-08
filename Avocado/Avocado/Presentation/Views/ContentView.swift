//
//  ContentView.swift
//  Avocado
//
//  Created by Fábio Carvalho on 07/09/2022.
//

import SwiftUI

struct ContentView: View {
    
    var headers: [Header] = headerData
    var facts: [Fact] = factData
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 0) {
                        ForEach(headers) { header in
                            HeaderView(header: header)
                        }
                    } //:HStack
                } //:ScrollView
                
                Text("Avocado dishes")
                    .fontWeight(.bold)
                    .font(.system(.title, design:.serif))
                    .foregroundColor(Color("ColorGreenAdaptive"))
                    .padding(8)
                
                DishesView()
                    .frame(maxWidth: 640)
                
                Text("Avocado facts")
                    .fontWeight(.bold)
                    .font(.system(.title, design:.serif))
                    .foregroundColor(Color("ColorGreenAdaptive"))
                    .padding(8)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 60) {
                        ForEach(facts) { fact in
                            FactView(fact: fact)
                            
                        } //:ForEach
                    } //:HStack
                    .padding(.vertical)
                    .padding(.leading, 60)
                    .padding(.trailing, 20)
                    
                } //:ScrollView
                
                VStack(alignment: .center, spacing: 20) {
                    Text("All about avocados")
                        .fontWeight(.bold)
                        .font(.system(.title, design:.serif))
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
        ContentView(headers: headerData, facts: factData)
    }
}
