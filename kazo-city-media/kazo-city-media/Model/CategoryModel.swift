//
//  CategoryModel.swift
//  kazo-city-media
//
//  Created by shuya on 2023/05/07.
//

import Foundation

struct CategoryModel:Identifiable{
    var id: UUID = UUID()
        var name:String
    var imageName: String
}

let categories : [CategoryModel] = [
    CategoryModel(name: "おでかけ・スポット", imageName: "odekakeSpot"),
    CategoryModel(name: "グルメ・カフェ", imageName: "gourmetCafe"),
    CategoryModel(name: "美容室・サロン", imageName: "salon")
]
