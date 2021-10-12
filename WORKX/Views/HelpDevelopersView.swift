//
//  HelpDevelopersView.swift
//  WORKX
//
//  Created by 吴子桐 on 23/9/2021.
//  帮助开发者选项

import SwiftUI

struct HelpDevelopersView: View {
    var body: some View {
        
        VStack{
            HStack{
        Button(action:{}){
            Text(" 支付宝 ")
                .font(.title)
                .background(Color.blue)
                .font(.title)
                .cornerRadius(10)
                .foregroundColor(Color.white)
                .shadow(radius:10)
                .padding()
                
                }
            }
            Spacer()
        }
    }
}

struct HelpDevelopersView_Previews: PreviewProvider {
    static var previews: some View {
        HelpDevelopersView()
    }
}
