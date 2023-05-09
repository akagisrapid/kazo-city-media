//
//  FeatureModel.swift
//  kazo-city-media
//
//  Created by shuya on 2023/05/09.
//

import Foundation
import SwiftUI

struct FeatureModel:Identifiable{
    var id: UUID = UUID()
    var title:String
    var personName:String
    var personPosition:String
    var comment: String
    var imageName: String
    var commentBgColor: Color?
}

let features : [FeatureModel] = [
    FeatureModel(
        title: "3県境の秘密に\n密着取材！",
        personName: "角田 守良",
        personPosition: "市長",
        comment: "未来へ受け継がれる歴史を継承し、\n市民のプライドを守りたい",
        imageName: "threePrefecturesPoint",
        commentBgColor: .yellow
    ),
    FeatureModel(
        title: "経営戦略を\n覗いてみた。",
        personName: "山本 朱里",
        personPosition: "社長",
        comment: "子供の頃楽しかった思い出を\n今の世代にも体験して欲しかった。",
        imageName: "ferrisWheel",
        commentBgColor: .indigo
    ),
    FeatureModel(
        title: "初主演の\n舞台裏へ。",
        personName: "関 涼平",
        personPosition: "俳優",
        comment: "人生には誰にでもドラマがある\n偶然、今回の役と自分が重なった",
        imageName: "ryohei",
        commentBgColor: nil
    ),
    
    
]
