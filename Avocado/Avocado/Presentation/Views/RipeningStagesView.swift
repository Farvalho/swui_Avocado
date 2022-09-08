//
//  RipeningStagesView.swift
//  Avocado
//
//  Created by Fábio Carvalho on 07/09/2022.
//

import SwiftUI

struct RipeningStagesView: View {
    
    var ripeningStages: [Ripening] = ripeningData
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack {
                Spacer()
                HStack(alignment: .center, spacing: 25) {
                    ForEach(ripeningStages) { stage in
                        RipeningView(ripening: stage)
                    } //:ForEach
                } //:HStack
                .padding(.vertical)
                .padding(.horizontal, 25)
                
                Spacer()
                
            } //:VStack
        } //:ScrollView
        .edgesIgnoringSafeArea(.all)
    }
}

struct RipeningStagesView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningStagesView(ripeningStages: ripeningData)
    }
}
