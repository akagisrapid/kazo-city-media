//
//  FeatureSelectView.swift
//  kazo-city-media
//
//  Created by shuya on 2023/04/07.
//

import SwiftUI

struct FeatureSelectView: View {
    @State var displayedFeatures = features
    
    var body: some View {
       VStack{
           Text("FEATURE（特集・注目）")
            
            ScrollView(.horizontal,showsIndicators: false){
                HStack{
                    ForEach($displayedFeatures){ feature in
                        FeatureView(featureModel: feature)
                    }
                }
            }
        }
    }
}

struct FeatureSelectView_Previews: PreviewProvider {
    static var previews: some View {
        FeatureSelectView()
    }
}
