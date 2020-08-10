
import SwiftUI
struct ImageModel: Identifiable {
let id: Int
let imageView: String
}
struct ImageView: View {

let postImages: ImageModel
    
var body: some View {
    
//    HStack {
//        if Image("Asset2") == selection {
//            Text("ok")
//        }
//
       
    
    
    VStack(alignment: .center) {

        Spacer()
     
Image(postImages.imageView)

    .resizable()
    .aspectRatio(contentMode: .fill)
    .frame(width: 280, height: 210, alignment: .center)
    .cornerRadius(20)
    
//    .shadow(radius: 20)
//    .frame(width: 330, height: 200, alignment: .center )
//    .position(postImages)
//    .frame(width: 330, height: 200, alignment: .center )

                   
  }
   
 

    
    }
     
    }


 
struct itemDetail: View {
let images: [ImageModel] = [
.init(id: 0, imageView: "Asset2"),
.init(id: 1, imageView: "Asset3"),
.init(id: 2, imageView: "Asset7"),
.init(id: 3, imageView: "Asset5"),
.init(id: 4, imageView: "Asset9"),
]
var body: some View {
NavigationView {
    ScrollView(.horizontal, showsIndicators: false) {
HStack {
ForEach(images, id: \.id) { post in
   
ForEach(0..<1) { _ in
ImageView(postImages: post)
       }
    }
        }
Spacer()
}.navigationBarTitle("Choose your Pizza")
.padding()
      }
    
    
   }
 

struct ContentView_Previews: PreviewProvider {
static var previews: some View {
itemDetail()
    }
}
}
