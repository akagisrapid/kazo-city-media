//
//  WriterModel.swift
//  kazo-city-media
//
//  Created by shuya on 2023/05/13.
//

import Foundation

struct WriterModel: Identifiable{
    var id: UUID = UUID()
    var title:String
    var episodeNumber: Int
    var imageName: String
}

let writers: [WriterModel] = [
    WriterModel(
        title: "戦う社長の奮闘記！", episodeNumber: 12, imageName: "kyoukaigui"
    ),
    WriterModel(
        title: "済生会加須病院の軌跡", episodeNumber: 5, imageName: "kazoHospital"
    ),
    WriterModel(
        title: "これが私のかぞ暮らし。", episodeNumber: 30, imageName: "kazogurashi"
    ),
]
