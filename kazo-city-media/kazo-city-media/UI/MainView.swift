//
//  MainView.swift
//  kazo-city-media
//
//  Created by shuya on 2023/04/07.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        
        ScrollViewReader{ proxy in
            NavigationStack{
                HStack{
                    Button(action:{
                        proxy.scrollTo("latestNews")
                    }){
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
                    
                    Button(action:{
                        proxy.scrollTo("category")})
                    {
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
                    
                    Button(action:{
                            proxy.scrollTo("feature")
                    }){
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
                    Button(action:{
                            proxy.scrollTo("writers")
                    }){
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
                    LatestNewsView().id("latestNews")
                    CategorySelectView().id("category")
                    FeatureSelectView().id("feature")
                    WritersSelectView().id("writers")
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
                            proxy.scrollTo("latestNews")
                            
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
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
