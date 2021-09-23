//
//  ContentView.swift
//  SiderMenuDemo01
//
//  Created by RandyWei on 2021/9/7.
//

import SwiftUI

struct SlideLeftMenu: View {
   
   //划动偏移量
   @GestureState var offset:CGFloat = 0
   
   //滑动应该停留在某个点
   //停留点： 屏幕宽度的3/5
   let maxOffset:CGFloat = UIScreen.main.bounds.width * 3 / 5
   
   //滑动展开之后的 offset
   @State var expandOffset:CGFloat = 0
   
   //回弹点：最大停留点/2
   private var springOffset:CGFloat{
       maxOffset / 2
   }
   //缩放比例，默认是1
   @State private var scaleRatio:CGFloat = 1
   
   //最小 可缩放值
   let minScale:CGFloat = 0.9
   
   
   private var dragGesture: some Gesture {
       DragGesture()
           .updating($offset, body: { value, out, _ in
               //判断是否反向滑动,如果是展开状态需要反向滑动
               if value.translation.width >= 0 || expandOffset != 0 {
                   out = value.translation.width
               }
           })
           .onChanged { value in
               //为了顺畅给缩放增加过渡
               if value.translation.width >= 0 {
                   //对缩放比例进行计算：缩放值 = 划动比例 * 可缩放值(1-minScale)
                   //因为是往小了缩，所以是1-缩放值
                   scaleRatio = 1 - (value.translation.width / maxOffset) * (1 - minScale)
               } else {
                   //反向value.translation.width是负数 ，所以+maxOffset变为正值
                   scaleRatio = 1 - ((maxOffset + value.translation.width) / maxOffset) * (1 - minScale)
               }
           }
           .onEnded { value in
               //需要判断滑动是否超过某个点来决定是重置还是停留
               if value.translation.width >= springOffset {
                   expandOffset = maxOffset
                   //停止后，缩小 到0.9
                   scaleRatio = minScale
               } else {
                   expandOffset = 0
                   scaleRatio = 1
               }
           }
   }
   
   var body: some View {
       
       ZStack{
           
           //侧边菜单层
           SideMenuView()
           
           //功能区域
           FeatureView()
               .offset(x: offset + expandOffset)
               .scaleEffect(scaleRatio)
               .animation(.easeInOut(duration: 0.05))
               .gesture(dragGesture)
               
           
       }
       
   }
}

struct FeatureView:View {
   
   var body: some View{
       
       GeometryReader{proxy in
           VStack{
               HStack{
                   Image(systemName: "list.dash")
                       .resizable()
                       .frame(width: 20, height: 20, alignment: .center)
                   
                   Text("功能区域")
                       .font(.title)
                   
                   Spacer()
               }
               
               ScrollView(.vertical, showsIndicators: false, content: {
                   
                   VStack{
                       
                       ForEach(0..<50){_ in
                           
                           HStack{
                               
                               Image(systemName: "person")
                                   .resizable()
                                   .frame(width: 80, height: 80, alignment: .center)
                               
                               VStack(alignment: .leading){
                                   Text("titletitletitletitletitle")
                                       .font(.title)
                                   
                                   Spacer()
                                   
                                   Text("bodybodybodybodybodybody")
                                       .font(.body)
                               }
                               
                           }
                           
                       }.redacted(reason: .placeholder)
                   }
                   
               })
           }
           .padding(.horizontal)
           .padding(.top, 8 + proxy.safeAreaInsets.top)
           .frame(maxWidth:.infinity,maxHeight: .infinity,alignment: .topLeading)
           .background(Color.white)
           .cornerRadius(30)
           .shadow(radius: 10)
           .ignoresSafeArea()
       }
       
   }
}

struct SideMenuView:View {
   var body: some View{
       
       GeometryReader{proxy in
           VStack(alignment:.leading){
               //祖传头像
               Image("avatar")
                   .resizable()
                   .aspectRatio(contentMode: .fill)
                   .frame(width: 100, height: 100, alignment: .center)
                   .clipShape(Circle())
               
               Text("WUTONK")
                   .font(.title)
               
               Text("这个人很懒，什么都没留下")
               
               //菜单
               
               HStack{
                   Button(action:{}){
                   Image(systemName: "archivebox")
                       Text("关于作者")
                       }
                   
               }
               .padding(.top)
               
               HStack{
                   Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                       Image(systemName: "note.text")
                       Text("广告页面(帮助我们)")
                   }
                   
               }
               .padding(.top)
               
               
               HStack{
                   Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                       Image(systemName: "gearshape")
                       Text("个人设置")
                   }
                   
               }
               .padding(.top)
               
               Spacer()
               
               HStack{
                   Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                       Image(systemName: "signature")
                       Text("退出登录")
                   }
                   
               }
               .padding(.top)
               
           }
           .foregroundColor(.white)
           .padding(.horizontal)
           .padding(.top, 8 + proxy.safeAreaInsets.top)
           .padding(.bottom, 8 + proxy.safeAreaInsets.bottom)
           .frame(maxWidth:.infinity,maxHeight: .infinity,alignment: .topLeading)
           .background(Color.black)
                .brightness(0.4)
           .ignoresSafeArea()
       }
       
   }
}

struct SlideLeftMenu_Previews: PreviewProvider {
   static var previews: some View {
       SlideLeftMenu()
   }
}
/*复制

作者：RandyWei
链接：https://juejin.cn/post/7005374220360220702
来源：掘金
著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。
*/
