//
//  RecipeDetailView.swift
//  Avocado
//
//  Created by Fábio Carvalho on 08/09/2022.
//

import SwiftUI

struct RecipeDetailView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @State private var pulsating: Bool = false
    
    var recipe: Recipe
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 0) {
                Image(recipe.image)
                    .resizable()
                    .scaledToFit()
                
                Group {
                    Text(recipe.title)
                        .font(.system(.largeTitle, design: .serif))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color("ColorGreenAdaptive"))
                        .padding(.top, 10)
                    
                    RecipeRatingView(recipe: recipe)
                    
                    RecipeCookingView(recipe: recipe)
                    
                    Text("Ingredients")
                        .fontWeight(.bold)
                        .font(.system(.title, design:.serif))
                        .foregroundColor(Color("ColorGreenAdaptive"))
                        .padding(8)
                    
                    VStack(alignment: .leading, spacing: 5) {
                        ForEach(recipe.ingredients, id:\.self) { ingredient in
                            VStack(alignment: .leading, spacing: 5) {
                                Text(ingredient)
                                    .font(.footnote)
                                    .multilineTextAlignment(.leading)
                                
                                Divider()
                            } //:VStack
                        } //:ForEach
                    } //:VStack
                    
                    Text("Instructions")
                        .fontWeight(.bold)
                        .font(.system(.title, design:.serif))
                        .foregroundColor(Color("ColorGreenAdaptive"))
                        .padding(8)

                    ForEach(recipe.instructions, id:\.self) { instruction in
                        VStack(alignment: .center, spacing: 5) {
                            Image(systemName: "chevron.down.circle")
                                .resizable()
                                .frame(width: 42, height: 42, alignment: .center)
                                .imageScale(.large)
                                .font(.title.weight(.ultraLight))
                                .foregroundColor(Color("ColorGreenAdaptive"))
                            
                            Text(instruction)
                                .lineLimit(nil)
                                .font(.system(.body, design: .serif))
                                .multilineTextAlignment(.center)
                                .frame(minHeight: 100)
                            
                            Divider()
                        } //:VStack
                    } //:ForEach
                }
                .padding(.horizontal, 24)
                .padding(.vertical, 12)
                
            } //:VStack
        } //:ScrollView
        .edgesIgnoringSafeArea(.all)
        .overlay(
            HStack {
                Spacer()
                VStack {
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                        
                    }, label: {
                        Image(systemName: "chevron.down.circle.fill")
                            .font(.title)
                            .foregroundColor(.white)
                            .shadow(radius: 4)
                            .opacity(pulsating ? 1 : 0.6)
                            .scaleEffect(pulsating ? 1.2 : 0.8, anchor: .center)
                            .animation(.easeInOut(duration: 1.5).repeatForever(autoreverses: true), value: pulsating)
                    })
                    .padding(.trailing, 20)
                    .padding(.top, 24)
                    
                    Spacer()
                } //:VStack
            } //:HStack
        )
        .onAppear() {
            pulsating.toggle()
        }
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailView(recipe: recipeData[0])
    }
}
