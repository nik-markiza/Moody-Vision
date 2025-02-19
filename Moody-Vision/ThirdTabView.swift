//
//  ThirdTabView.swift
//  Moody-Vision
//
//  Created by Mykyta Markyza on 19.02.2025.
//

import SwiftUI

struct ThirdTabView: View {
    
    @State private var isThirdView: Bool = true
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [.cyan, .indigo]),
           startPoint: .top,
           endPoint: .bottom)
        .ignoresSafeArea(.all)
    }
}

#Preview {
    ContentView()
}
