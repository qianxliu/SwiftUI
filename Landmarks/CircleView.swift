//
//  CircleView.swift
//  Landmarks
//
//  Created by qianxliu on 2023/12/5.
//

import SwiftUI

struct CircleView: View {
    @State private var isShowingImage = false

    var body: some View {
        VStack {
            Button(action: {
                self.isShowingImage.toggle()
            }) {
                Text("Rate")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            
            if isShowingImage {
                Image(systemName: "heart.fill")
                    .resizable()
                    .foregroundColor(Color.red)
                    .frame(width: 200, height: 200)
                    .shadow(radius: 7)
            } else {
                Image(systemName: "star.fill")
                    .resizable()
                    .foregroundColor(.yellow)
                    .frame(width: 200, height: 200)
                    .shadow(radius: 7)
            }
        }
    }
}

#Preview {
    CircleView()
}
