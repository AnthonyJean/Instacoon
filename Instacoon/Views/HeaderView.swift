//
//  HeaderView.swift
//  Instacoon
//
//  Created by Anthony Jean on 23/12/2022.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            //TODO: Fix le text crop avec la police custom
            Text("Instacoon")
                .foregroundColor(Color("HeaderFontColor"))
                .frame(height: 60.0)
                .font(Font.custom("VeganStylePersonalUse", size: 34,relativeTo: .largeTitle))
                .padding()
            Spacer()
            HeaderButtonsView()
        }
        .frame(maxWidth: .infinity)
        .frame(height: 60.0)
        .background {
            Color("AppBackgroundColor")
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}

struct HeaderButtonsView: View {
    var body: some View {
        HStack(alignment: .center) {
            Image(systemName: "plus.app")
                .resizable()
                .frame(width: 25.0, height: 25.0)
                .foregroundColor(Color("HeaderFontColor"))
            Spacer()
            Image(systemName: "heart")
                .resizable()
                .frame(width: 28.0, height: 25.0)
                .foregroundColor(Color("HeaderFontColor"))
            Spacer()
            Image(systemName: "paperplane")
                .resizable()
                .frame(width: 25.0, height: 25.0)
                .foregroundColor(Color("HeaderFontColor"))
        }
        .frame(width: 120)
        .padding(.trailing, 24.0)
    }
}
