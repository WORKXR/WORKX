//
//  TypeView.swift
//  WORKX
//
//  Created by 吴子桐 on 24/9/2021.
// 用于单独显示类型列表下的任务

import SwiftUI

struct TypeView: View {
    var body: some View {
        HStack{
            Image(systemName: "list.dash")
                .resizable()
                .frame(width: 20, height: 20, alignment: .center)
            
            Text("查看任务")
                .font(.title)
                .font(.largeTitle)
            
            
        }
    }
}

struct TypeView_Previews: PreviewProvider {
    static var previews: some View {
        TypeView()
    }
}
