//
//  web.swift
//  WORKX
//
//  Created by 吴子桐 on 20/9/2021.
//

import SwiftUI
import WebKit //导入框架


struct WebView : UIViewRepresentable { //使当前结构体遵循UIViewRepresentable协议。使用该协议的实例，可以在SwiftUI中创建和管理UIView对象
    
    
    //使用UIViewRepresentableContext标准将uikie中的web函数桥接
    func makeUIView(context: UIViewRepresentableContext<WebView>) -> WKWebView {
        return WKWebView()
    }
    //解析和访问功能
    
    
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<WebView>) {
        let request = URLRequest(url:URL(string: "https://google.com")!)
        uiView.load(request)
        //这里预留一个绑定类型变量用来更换URL
    }
}




#if DEBUG

struct WebView_previews: PreviewProvider {
    static var previews: some View {
        WebView()
    }
}

#endif
