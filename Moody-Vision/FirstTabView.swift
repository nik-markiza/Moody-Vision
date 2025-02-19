//
//  FirstTabView.swift
//  Moody-Vision
//
//  Created by Mykyta Markyza on 19.02.2025.
//

import SwiftUI

struct FirstTabView: View {

   @State private var isFirstView: Bool = true

    var body: some View {
        LinearGradient(gradient: Gradient(colors: [.mint, .brown]),
           startPoint: .top,
           endPoint: .bottom)
        .ignoresSafeArea(.all)
        VStack {
            HeaderView(isFrontCamera: isFirstView)
            BodyView()
        }
    }
}

struct BodyView: View {
    var headerIcon: String = "camera"
    var backgroundColors: [Color] = [.mint, .indigo]

    var body: some View {
        Spacer ()
        ControlView()
        Spacer ()
    }
}
    
struct ControlView: View {

    //    @Binding var isFrontCamera: Bool


    var controls: [String] = ["Camera", "Filters", "Effects", "More"]
    var icons: [String] = [
        "arrow.trianglehead.2.clockwise.rotate.90",
        "camera.filters",
        "pencil.tip.crop.circle",
        "ellipsis.circle"
    ]

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
                .symbolRenderingMode(.multicolor)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 26, height: 26, alignment: .center)
                .padding(.bottom, 0)
                .foregroundColor(.orange)
            Button {
                print("...")
            } label: {
                Text(buttonName)
                    .frame(width: 80, height: 50)
                    .foregroundColor(.white)
                    .font(.system(size: 18, weight: .bold, design: .monospaced))
            }
        }
    }
}
    
struct HeaderView: View {

    var isFrontCamera: Bool

    var body: some View {
        Text(isFrontCamera ? "Front Camera" : "Back Camera")
            .font(.system(size: 26, weight: .medium, design: .monospaced))
            .foregroundColor(.black)
            .padding(.vertical, 20)
        VStack (spacing: 20) {
            Image(systemName: "camera")
                .symbolRenderingMode(.multicolor)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 60, height: 60,  alignment: .center)
        }
    }
}

#Preview {
    ContentView()
}

