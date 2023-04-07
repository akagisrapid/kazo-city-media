//
//  MainView.swift
//  kazo-city-media
//
//  Created by shuya on 2023/04/07.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationStack{
            
            LatestNewsView()
            CategorySelectView()
            FeatureSelectView()
            WritersSelectView()
            MylistSelectView()
        }
        .navigationBarTitle("かぞっこ")
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
