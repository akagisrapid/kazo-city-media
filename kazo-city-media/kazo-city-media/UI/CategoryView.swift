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
        Image(categoryModel.imageName)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 200, height: 300)
            .clipped()
            .overlay{
                VStack {
                    Spacer()
                    Text(categoryModel.name)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                }
            }
    }
    
}

struct CategoryView_Previews: PreviewProvider {
    @State static var categoryModel: CategoryModel = categories.first ?? CategoryModel(name: "おでかけ・スポット", imageName: "odekakeSpot")
    
    
    static var previews: some View {
        CategoryView(categoryModel: $categoryModel)
    }
}
