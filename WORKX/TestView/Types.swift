//
//  Types.swift
//  WORKX
//
//  Created by 吴子桐 on 25/9/2021.
//
//用于测试不同类型任务的UI

import SwiftUI

struct Types: View {
    var body: some View {
        VStack{
            
            Button("注册"){}
            .frame(width: 250, height: 40)
            .font(.caption)
            .foregroundColor(.green)
            .cornerRadius(20)
    
            
        }
    }
}

struct Types_Previews: PreviewProvider {
    static var previews: some View {
        Types()
    }
}
