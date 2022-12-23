//
//  StoryView.swift
//  Instacoon
//
//  Created by Anthony Jean on 23/12/2022.
//

import SwiftUI

struct StoryView: View {
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack(spacing: 18) {
                ForEach(0..<10) { i in
                    VStack {
                        StoryCircleView()
                        StoryCircleText(text: "Test")
                    }
                }
            }
            .padding(.leading, 20.0)
            .padding(.trailing, 20.0)
        }
        .frame(height: 140)
    }
}

struct StoryCircleView: View {
    var body: some View {
        let raccoon = "raccoon" + String(Int.random(in: 1..<10))
        Image(raccoon)
            .resizable()
            .scaledToFill()
            .frame(width: 80.0, height: 80.0, alignment: .center)
            .clipShape(Circle())
            .background {
                Circle()
                    .frame(width: 86.0, height: 86.0)
                    .foregroundColor(Color("StoryBackgroundColor"))
                    .overlay {
                        Circle().stroke(LinearGradient(colors: [Color("StoryCircleColor1"), Color("StoryCircleColor2"), Color("StoryCircleColor3")], startPoint: .topTrailing, endPoint: .bottomLeading), lineWidth: 2)
                    }
            }
    }
}

struct StoryCircleText: View {
    let text: String
    
    var body: some View {
        Text(text.lowercased())
            .font(.body)
            .foregroundColor(Color("HeaderFontColor"))
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView()
    }
}
