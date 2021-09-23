//
//  AboutDevelopers.swift
//  WORKX
//
//  Created by 吴子桐 on 22/9/2021.
//

import SwiftUI

struct AboutDevelopers: View {
    var body: some View {
        VStack{
            
            HStack{
        
                VStack{
                    Image("WUTONK")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                    Text("WUTONK")
                    
                }
                .padding(.trailing)
                    
                    VStack{
                        Image("cubik65535")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                        Text("cubik65535")
                        
                    }
                    .padding(.leading, 100.0)
                }
              
            VStack{
                Text("关于APP")
                    .background(Color.gray)
                    .font(.title)
                    .cornerRadius(10)
                    .shadow(radius:10)
                    .padding()
            }
            .padding(.top)
            Spacer()
            
            
        }
        .padding(.bottom)
        
        
            
                
            
                
        
        
        
        
        
        
        
        
        
        
    }
}

struct AboutDevelopers_Previews: PreviewProvider {
    static var previews: some View {
        AboutDevelopers()
    }
}

/*
 以下是文案

此APP的维护工作室:https://github.com/WORKXR

此APP的项目地址:https://github.com/WORKXR/WORKX

此项目的开发者:cubik65336 (https://github.com/orgs/WORKXR/people/Cubik65536) , WUTONK(https://github.com/orgs/WORKXR/people/WUTONK)



感谢您支持我们的APP

如果想提供进一步支持,请点击您可点击观看广告按钮或使用爱发电向我们提供资金支持
 */
