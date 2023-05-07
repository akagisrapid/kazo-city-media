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
            HStack{
                Button(action:{}){
                    Text("新着News")
                        .fontWeight(.semibold)
                        .lineLimit(1)
                        .minimumScaleFactor(0.1)
                        .padding()
                }
                .overlay(
                    RoundedRectangle(
                        cornerRadius: 30)
                    .stroke(Color.blue,lineWidth: 1)
                )
                
                Button(action:{}){
                    Text("Category")
                        .fontWeight(.semibold)
                        .lineLimit(1)
                        .minimumScaleFactor(0.1)
                        .padding()
                }
                .overlay(
                    RoundedRectangle(
                        cornerRadius: 30)
                    .stroke(Color.blue,lineWidth: 1)
                )
                
                Button(action:{}){
                    Text("Feature")
                        .fontWeight(.semibold)
                        .lineLimit(1)
                        .minimumScaleFactor(0.1)
                        .padding()
                }
                .overlay(
                    RoundedRectangle(
                        cornerRadius: 30)
                    .stroke(Color.blue,lineWidth: 1)
                )
                Button(action:{}){
                    Text("Writer's")
                        .fontWeight(.semibold)
                        .lineLimit(1)
                        .minimumScaleFactor(0.1)
                        .padding()
                }
                .overlay(
                    RoundedRectangle(
                        cornerRadius: 30)
                    .stroke(Color.blue,lineWidth: 1)
                )
            }
            List{
                LatestNewsView()
                CategorySelectView()
                FeatureSelectView()
                WritersSelectView()
                MylistSelectView()
            }
            .navigationTitle("かぞっこ")
            
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                
                ToolbarItem(placement: .navigationBarTrailing){
                    Button(action:{
                        // 検索
                    }){
                        Image(systemName: "magnifyingglass")
                    }
                }
                ToolbarItemGroup(placement: .bottomBar){
                    Button(action:{
                        
                    }){
                        VStack{
                            Image(systemName: "house")
                            Text("ホーム")
                        }
                    }
                        Spacer()
                    Button(action:{
                        
                    }){
                        VStack{
                            Image(systemName: "flame")
                            Text("新着＆急上昇")
                        }
                    }
                        Spacer()
                    Button(action:{
                        
                    }){
                        VStack{
                            Image(systemName: "doc")
                            Text("掲載＆募集")
                        }
                    }
                }
            }
        }
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
