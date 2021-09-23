//
//  ContentView.swift
//  WORKX
//
//  Created by Cubik65536 on 2021-09-20.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                // 代办事项列表
                
            }.navigationBarTitleDisplayMode(.inline)
            .toolbar {
                    ToolbarItem(placement: .principal) {
                        // 顶部工具栏
                        HStack {
                            Spacer()
                            Button(action: {
                                // 呼出左侧面板
                                
                            }) {
                                Image(systemName: "rectangle.portrait.and.arrow.right")
                                    .foregroundColor(Color.green)
                                    .padding(.trailing, 13.0)
                            }
                            
                            Spacer()
                                .padding(.leading)
                            
                                Button(action: {
                                    // 添加待办事项
                                    
                                }) {
                                    Image(systemName: "plus")
                                }
                                
                        
                        
                            
                                
                               
                    }
                }
            }
        }
        .padding(.leading)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
    }
}
