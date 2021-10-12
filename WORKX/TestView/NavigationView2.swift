import SwiftUI

struct HomeContentView: View {
 /// 触发present的key
 @State var presetnKey = false
 var body: some View {
 //页面设置为垂直布局
     NavigationView(){
         VStack(){
         Spacer()
         NavigationLink("点击文字直接push",destination:FristView())
         Spacer()
 
 }
 .navigationBarTitle("首页", displayMode: .inline)//设置标题，并固定到导航中间
// .sheet(isPresented: $presetnKey) {
// //非全屏模式
// FristView()
// }
 
 }
 
 }
}

struct HomeContentView_Previews: PreviewProvider {
     static var previews: some View {
         HomeContentView()
     }
}

import SwiftUI
    struct FristView: View {
     //用于退出该界面
     @Environment(\.presentationMode) var presentationMode
     var body: some View {
         VStack(alignment: .center, spacing: nil, content: {
             Spacer()
             HStack(content: {
             Spacer()
             })
         Button("点击按钮返回") {
         self.presentationMode.wrappedValue.dismiss()
         }
             .font(.system(size: 18))
             .foregroundColor(.white)
             .background(Color.clear)
         
             Spacer()
             })
         .background(Color.gray)
         .navigationBarTitle("第一页", displayMode: .inline)
         }
    }

    struct FristView_Previews: PreviewProvider {
         static var previews: some View {
         FristView()
     }
}
