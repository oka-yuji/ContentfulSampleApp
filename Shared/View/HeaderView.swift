//
//  HeaderView.swift
//  AnimationHeaderDemo (iOS)
//
//  Created by 岡優志 on 2021/04/01.
//

import SwiftUI

struct HeaderView: View {
    @EnvironmentObject var homeData : HomeViewModel
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            
            Button(action: {}, label: {
                Image(systemName: "arrow.left")
                    .font(.system(size: 20, weight: .bold))
                    .frame(width: 40, height: 40)
                    .foregroundColor(.primary)
            })
            
            
            Text("OkaCafe")
                .font(.title)
                .fontWeight(.bold)
            Text("Asiatisch. koreanisch. japanisch")
                .font(.caption)
            HStack(spacing: 8.0){
                Image(systemName: "clock")
                
                Text("30~40 Min")
                
                Text("4.3")
                
                Image(systemName: "star.fill")
                
                Text("$6.40 Fee")
                    .padding(.leading, 10)
                
                
            }
            .font(.caption)
            .frame(maxWidth:.infinity , alignment: .leading)
            
            if homeData.offset > 250{
                Divider()
            }
        }
        .padding(.horizontal)
        .frame(height: 100)
        .background(Color.white)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
