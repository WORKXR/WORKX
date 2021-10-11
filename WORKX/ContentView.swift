//
//  ContentView.swift
//  WORKX
//
//  Created by Cubik65536 on 2021-09-20.
//

import SwiftUI


struct ContentView: View {
    
    @State var isLeftMenu: Bool = false
    
    var body: some View {
    
        NavigationView {
            
        List {
                // 代办事项列表
                
        }.navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                        // 顶部工具栏
                        Button(action: {
                            
                        }) {
                            Image(systemName:"rectangle.portrait.and.arrow.right")
                                .foregroundColor(.green)
                           }
                        }
                            
                    ToolbarItem(placement: .navigationBarTrailing) {
                            // 添加代办事项
                            Button{
                                
                            } label: {
                                Image(systemName:"plus")
                                     }
                        
                }
            }
            NavigationLink(destination: NextView2(), isActive: $isLeftMenu){EmptyView()}
        }
        .padding(.leading)
    }
}

struct NextView2: View {
    var body: some View {
        
        Text("HI")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
    
    }
}
