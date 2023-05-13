import SwiftUI

struct WritersSelectView: View {
    @State var _writers = writers
    var body: some View {
        VStack{
        Text("WRITER'S（連載記事・コラム）")
        
        ScrollView(.horizontal,showsIndicators: false){
            HStack{
                ForEach($_writers){ writer in
                    WriterView(writerModel: writer)
                }
            }
        }
    }
    }
}

struct WritersSelectView_Previews: PreviewProvider {
    static var previews: some View {
        WritersSelectView()
    }
}
