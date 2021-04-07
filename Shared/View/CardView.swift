//
//  CardView.swift
//  AnimationHeaderDemo (iOS)
//
//  Created by 岡優志 on 2021/04/01.
//

import SwiftUI

struct CardView: View {
    var food: FoodData
    var body: some View {
        HStack{
            VStack(alignment: .leading, spacing: 5, content: {
                Text(food.title)
                    .fontWeight(.bold)
                
                Text(food.description)
                    .font(.caption)
                    .lineLimit(3)
                
                Text(food.price)
                    .fontWeight(.bold)
            })
            Spacer()
            Image(food.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 130, height: 130)
                .cornerRadius(10)
        }.padding(.horizontal)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
