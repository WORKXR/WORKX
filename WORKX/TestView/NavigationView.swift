//
//  NavigationView.swift
//  WORKX
//
//  Created by 吴子桐 on 9/10/2021.
//

import SwiftUI

struct NavigationViews: View {
    var body: some View {
        NavigationView {
            NavigationLink(destination: Text("hI")) {
                Text("Hello, World!")
            }
            .navigationTitle("Navigation")
        }
    }
}

struct NavigationView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViews()
    }
}
