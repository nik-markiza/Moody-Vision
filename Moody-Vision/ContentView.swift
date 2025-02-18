//
//  ContentView.swift
//  Moody-Vision
//
//  Created by Mykyta Markyza on 14.02.2025.
//

import SwiftUI

struct ContentView: View {
    
    var headerTitle: String = "Front Camera View"
    var backgroundColors: [Color] = [.mint, .indigo]
    
    var body: some View {
        ZStack() {
            BackgroundView(topColor: backgroundColors[0], bottomColor: backgroundColors[1])
            VStack {
                Text(headerTitle)
                    .font(.system(size: 26, weight: .medium, design: .monospaced))
                    .foregroundColor(.black)
                    .padding(.vertical, 20)
                VStack (spacing: 20) {
                    Image(systemName: "camera")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 60, height: 60,  alignment: .center)
                }
                Spacer ()
                ControlsView()
            }
        }
    }
}

#Preview {
    ContentView()
}

struct ControlsView: View {
    
    var controls: [String] = ["Camera", "Filters", "Effects", "More"]
    var icons: [String] = ["person", "camera.filters", "pencil.tip.crop.circle", "ellipsis.circle"]
    
    var body: some View {
        HStack (spacing: 16) {
            ButtonView(buttonName: controls[0], iconName: icons[0])
            ButtonView(buttonName: controls[1], iconName: icons[1])
            ButtonView(buttonName: controls[2], iconName: icons[2])
            ButtonView(buttonName: controls[3], iconName: icons[3])
        }
    }
}

struct ButtonView: View {

    var buttonName: String
    var iconName: String

    var body: some View {
        VStack{
            Image(systemName: iconName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 26, height: 26, alignment: .center)
                .padding(.bottom, 0)
                .foregroundColor(.orange)
            Button {
                print(buttonName)
            } label: {
                Text(buttonName)
                    .frame(width: 80, height: 50)
                    .foregroundColor(.white)
                    .font(.system(size: 18, weight: .bold, design: .monospaced))
            }
        }
    }
}

struct BackgroundView: View {

    var topColor: Color
    var bottomColor: Color

    var body: some View {
        LinearGradient(gradient: Gradient(colors: [topColor, bottomColor]),
                       startPoint: .top,
                       endPoint: .bottom)
        .ignoresSafeArea(.all)
    }
}
