//
//  SecondTabView.swift
//  Moody-Vision
//
//  Created by Mykyta Markyza on 19.02.2025.
//

import SwiftUI

struct SecondTabView: View {

    @State private var isSecondView: Bool = true
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [.blue, .gray]),
           startPoint: .top,
           endPoint: .bottom)
        .ignoresSafeArea(.all)
    }
}

#Preview {
    ContentView()
}
