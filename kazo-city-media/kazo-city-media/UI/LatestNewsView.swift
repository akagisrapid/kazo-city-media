//
//  LatestNewsView.swift
//  kazo-city-media
//
//  Created by shuya on 2023/04/07.
//

import SwiftUI

struct LatestNewsView: View {
    var body: some View {
        VStack{
            Text("新着News!").padding()
            HStack{
                Button(action: {
                    
                }){
                    Label("詳細",systemImage: "play.fill")
                }
                Button(action: {
                    
                }){
                    Label("マイリスト",systemImage: "list.bullet")
                }
            }.buttonStyle(.bordered)
        }
        
    }
}

struct LatestNewsView_Previews: PreviewProvider {
    static var previews: some View {
        LatestNewsView()
    }
}
