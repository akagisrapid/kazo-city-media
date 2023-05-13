//
//  WriterView.swift
//  kazo-city-media
//
//  Created by shuya on 2023/05/13.
//

import SwiftUI

struct WriterView: View {
    @Binding var writerModel: WriterModel
    var body: some View {
        Image(writerModel.imageName)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 200, height: 300)
            .clipped()
            .overlay{
                VStack (alignment: .leading){
                    Spacer()
                    Text("Episode " + String(writerModel.episodeNumber))
                        
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    Text(writerModel.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        
                }.padding()
                
            }
    }
}

struct WriterView_Previews: PreviewProvider {
    @State static var writerModel: WriterModel = writers.first ?? WriterModel(title: "Startrail", episodeNumber: 2053, imageName: "")
    
    
    static var previews: some View {
        WriterView(writerModel: $writerModel)
    }
}
