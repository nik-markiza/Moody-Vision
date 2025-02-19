//
//  ContentView.swift
//  Moody-Vision
//
//  Created by Mykyta Markyza on 14.02.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView {
            NavigationView {
                ZStack {
                    FirstTabView()
                }
            }
            .tabItem {
                Label("", systemImage: "house.circle")
            }
            
            NavigationView {
                ZStack {
                    SecondTabView()
                }
            }
            .tabItem {
                Label("", systemImage: "heart")
            }
            
            NavigationView {
                ZStack {
                    ThirdTabView()
                }
            }
            .tabItem {
                Label("", systemImage: "ellipsis.circle")
            }
            
        }
    }
}

#Preview {
    ContentView()
}

