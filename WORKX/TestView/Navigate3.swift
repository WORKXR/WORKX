//
//  Navigate3.swift
//  WORKX
//
//  Created by 吴子桐 on 10/10/2021.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView{
            VStack {
                NavigationLink(destination:NextView()) {
                    Text("下一个窗口")
                }
            }.navigationTitle("主页面")
        }
    }
}
        
struct NextView: View {
    var body: some View {
        VStack {
            NavigationLink(destination:
                            ThirdView()) {
                Rectangle()
                    .frame(width: 640, height: 480)
                    .foregroundColor(.green)
            }
            Spacer()
        }
        .edgesIgnoringSafeArea(.all)
        .navigationTitle("下一个视图")
    }
}

struct ThirdView:View {
    
    var body: some View {
        VStack {
            Rectangle()
                .frame(width: 640, height: 280)
                .foregroundColor(.red)
            Spacer()
        }
        .edgesIgnoringSafeArea(.all)
        .navigationTitle("第三个视图")
    }
}

struct Navigate3_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
        ThirdView()
    }
}
