//
//  CategoryView.swift
//  kazo-city-media
//
//  Created by shuya on 2023/05/07.
//

import SwiftUI

struct CategoryView: View {
    @Binding var categoryModel: CategoryModel
    
    var body: some View {
        ZStack(alignment: .bottom){
            Image(categoryModel.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 200, height: 300)
                .clipped()
            VStack(alignment: .leading, spacing: 8){
                Text(categoryModel.name)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .fixedSize(horizontal: true, vertical: false)
            }
            .padding()
        }
    }
}

struct CategoryView_Previews: PreviewProvider {
    @State static var categoryModel: CategoryModel = CategoryModel(name: "おでかけ・スポット", imageName: "odekakeSpot")
    
    
    static var previews: some View {
        CategoryView(categoryModel: $categoryModel)
    }
}
