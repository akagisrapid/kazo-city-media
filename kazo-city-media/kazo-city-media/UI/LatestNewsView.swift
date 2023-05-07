//
//  LatestNewsView.swift
//  kazo-city-media
//
//  Created by shuya on 2023/04/07.
//

import SwiftUI

struct LatestNewsView: View {
    var body: some View {
        Image("LatestNews")
            .resizable()
            .scaledToFit()
            .overlay{
        VStack{
            Text("新着News!").foregroundColor(.white).padding(.top, 50.0)
            Spacer()
                HStack{
                    Button(action: {
                        
                    }){
                        Label("詳細",systemImage: "play.fill")
                    }.background(Color.white)
                    Button(action: {
                        
                    }){
                        Label("マイリスト",systemImage: "list.bullet")
                    }
                    .background(Color.gray)
                }.buttonStyle(.bordered)
                .padding(.bottom,40.0)
            }
        }
    }
}

struct LatestNewsView_Previews: PreviewProvider {
    static var previews: some View {
        LatestNewsView()
    }
}
