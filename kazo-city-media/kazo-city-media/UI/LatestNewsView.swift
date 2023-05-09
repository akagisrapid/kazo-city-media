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
            .aspectRatio(contentMode: .fill)
            .clipped()
            .overlay{
                VStack{
                    Text("新着News!")
                        .foregroundColor(.white)
                        .padding()
                    Spacer()
                    HStack{
                        Button(action: {
                            
                        }){
                            Image(systemName:"play.fill")
                            Text("詳細").lineLimit(1)
                        }
                        .background(Color.white)
                        
                        Button(action: {
                            
                        }){
                            Image(systemName:"list.bullet")
                            Text("マイリスト").lineLimit(1)
                        }
                        .background(Color.gray)
                    }
                    .buttonStyle(.bordered)
                    .padding()
                }
        }
    }
}

struct LatestNewsView_Previews: PreviewProvider {
    static var previews: some View {
        LatestNewsView()
    }
}
