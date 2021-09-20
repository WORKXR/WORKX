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
                // 代办时间列表
                
            }.navigationBarTitleDisplayMode(.inline)
            .toolbar {
                    ToolbarItem(placement: .principal) {
                        // 顶部工具栏
                        HStack {
                            Spacer()
                            Button(action: {
                                // 添加待办事项
                                
                            }) {
                                Image(systemName: "plus")
                            }
                        }
                    }
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
