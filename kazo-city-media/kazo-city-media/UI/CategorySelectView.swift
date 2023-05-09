//
//  CategorySelectView.swift
//  kazo-city-media
//
//  Created by shuya on 2023/04/07.
//

import SwiftUI

struct CategorySelectView: View {
    @State var cat = categories
    var body: some View {
        VStack{
            Text("CATEGORY（知りたいを探す）")
            
            ScrollView(.horizontal,showsIndicators: false){
                HStack{
                    ForEach($cat){ category in
                        CategoryView(categoryModel: category)
                    }
                }
            }
        }
    }
}

struct CategorySelectView_Previews: PreviewProvider {
    static var previews: some View {
        CategorySelectView()
    }
}
