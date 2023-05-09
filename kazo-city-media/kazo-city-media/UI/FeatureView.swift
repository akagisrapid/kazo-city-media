//
//  FeatureView.swift
//  kazo-city-media
//
//  Created by shuya on 2023/05/09.
//

import SwiftUI

struct FeatureView: View {
    @Binding var featureModel: FeatureModel
    
    
    var body: some View {
            Image(featureModel.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 200, height: 300)
                .clipped()
                .overlay{
                    VStack{
                        VStack(alignment: .leading, spacing: 10){
                            Text("FEATURE")
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            Text(featureModel.title)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                        }.padding()
                        Spacer()
                        RoundedRectangle(cornerRadius: 22)
                            .fill(featureModel.commentBgColor ?? .clear)
                            .frame(width:200, height: 100)
                            .overlay(alignment:.bottom){
                                VStack{
                                    HStack{
                                        Spacer()
                                        Text(featureModel.personPosition)
                                            .foregroundColor(.white)
                                            .dynamicTypeSize(.small)
                                        Text(featureModel.personName)
                                            .fontWeight(.bold)
                                            .foregroundColor(.white)
                                    }
                                    Text(featureModel.comment)
                                        .foregroundColor(.white)
                                        .dynamicTypeSize(.small)
                                }
                    
                            }
                    }
                }
            
            .padding()
        }
    
}

struct FeatureView_Previews: PreviewProvider {
    @State static var featureModel: FeatureModel =
    FeatureModel(
        title: "3県境の秘密に密着取材！",
        personName: "角田 守良",
        personPosition: "市長",
        comment: "未来へ受け継がれる歴史を継承し、市民のプライドを守りたい",
        imageName: "threePrefecturesPoint",
        commentBgColor: .yellow
    )
    static var previews: some View {
        FeatureView(featureModel: $featureModel)
    }
}
