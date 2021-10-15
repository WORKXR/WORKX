//
//  NavigateView4.swift
//  WORKX
//
//  Created by 吴子桐 on 11/10/2021.
//

import SwiftUI

struct MainView: View {
    @State private var isPresented = false
    
    var body: some View {
        Button("ttt") {
            self.isPresented = true
        }.sheet(isPresented: $isPresented, content: {
            NextView()
        })
    }
}
        
struct NextView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            Rectangle()
                .frame(width: 640, height: 480)
                .foregroundColor(.green)
                .onTapGesture(count: 1, perform: {
                self.presentationMode.wrappedValue.dismiss()
            })
            Spacer()
        }.edgesIgnoringSafeArea(.all)
    }
}

struct NavigateView4_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
