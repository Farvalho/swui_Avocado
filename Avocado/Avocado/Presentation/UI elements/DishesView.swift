//
//  DishesView.swift
//  Avocado
//
//  Created by Fábio Carvalho on 07/09/2022.
//

import SwiftUI

struct DishesView: View {
    var body: some View {
        HStack(alignment:.center, spacing: 4) {
            VStack(alignment:.leading, spacing: 4) {
                HStack {
                    Image("icon-toasts")
                        .resizable()
                        .modifier(IconModifier())
                    
                    Spacer()
                    
                    Text("Toasts")
                } //:HStack
                
                Divider()
                
                HStack {
                    Image("icon-tacos")
                        .resizable()
                        .modifier(IconModifier())
                    
                    Spacer()
                    
                    Text("Tacos")
                } //:HStack
                
                Divider()
                
                HStack {
                    Image("icon-salads")
                        .resizable()
                        .modifier(IconModifier())
                    
                    Spacer()
                    
                    Text("Salads")
                } //:HStack
                
                Divider()
                
                HStack {
                    Image("icon-halfavo")
                        .resizable()
                        .modifier(IconModifier())
                    
                    Spacer()
                    
                    Text("Spreads")
                } //:HStack
                
            } //:VStack
            
            VStack(alignment:.center, spacing: 16) {
                HStack {
                    Divider()
                }
                
                Image(systemName: "heart.circle")
                    .font(.title.weight(.ultraLight))
                    .imageScale(.large)
                
                HStack {
                    Divider()
                }
                
            } //:VStack
            
            VStack(alignment:.trailing, spacing: 4) {
                HStack {
                    Text("Guacamole")
                    
                    Spacer()
                    
                    Image("icon-guacamole")
                        .resizable()
                        .modifier(IconModifier())
                    
                } //:HStack
                
                Divider()
                
                HStack {
                    Text("Sandwiches")
                    
                    Spacer()
                    
                    Image("icon-sandwiches")
                        .resizable()
                        .modifier(IconModifier())
                    
                } //:HStack
                
                Divider()
                
                HStack {
                    Text("Soup")
                    
                    Spacer()
                    
                    Image("icon-soup")
                        .resizable()
                        .modifier(IconModifier())
                    
                } //:HStack
                
                Divider()
                
                HStack {
                    Text("Smoothies")
                    
                    Spacer()
                    
                    Image("icon-smoothies")
                        .resizable()
                        .modifier(IconModifier())
                    
                } //:HStack
                
            } //:VStack
            
        } //:HStack
        .font(.system(.callout, design: .serif))
        .foregroundColor(.gray)
        .padding(.horizontal)
        .frame(maxHeight:220)
    }
}

struct DishesView_Previews: PreviewProvider {
    static var previews: some View {
        DishesView()
            .previewLayout(.fixed(width: 414, height: 280))
    }
}
