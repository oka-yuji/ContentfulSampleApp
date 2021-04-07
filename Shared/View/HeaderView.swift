//
//  HeaderView.swift
//  AnimationHeaderDemo (iOS)
//
//  Created by 岡優志 on 2021/04/01.
//

import SwiftUI

struct HeaderView: View {
    @EnvironmentObject var homeData : HomeViewModel
    @Environment(\.colorScheme) var scheme
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            
            HStack(spacing: 0) {
                Button(action: {}, label: {
                    Image(systemName: "arrow.left")
                        .font(.system(size: 20, weight: .bold))
                        .frame(width: getSize(), height: getSize())
                        .foregroundColor(.primary)
                })
                Text("OkaCafe")
                    .font(.title)
                    .fontWeight(.bold)
            }
            
          
            
            
            ZStack {
                VStack(alignment: .leading, spacing: 0, content: {
                    
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
            .frame(maxWidth:.infinity, alignment: .leading)
                    
                })
                .opacity(homeData.offset > 200 ? 1 - Double((homeData.offset - 200) / 50) : 1)
                
                ScrollViewReader { reader in
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        HStack(spacing: 10.0){
                     
                            ForEach(tabItems){ tab in
                                Text(tab.tab)
                                    .font(.caption)
                                    .padding(.vertical, 10.0)
                                    .padding(.horizontal)
                                    .background(Color.primary.opacity(homeData.selectedTab == tab.tab ? 1 : 0))
                                    .clipShape(Capsule())
                                    .foregroundColor(homeData.selectedTab == tab.tab ? scheme == .dark ? Color.black : Color.white : Color.primary)
                                    .id(tab.tab)
                                    
                            }
                            .onChange(of: homeData.selectedTab, perform: { value in
                                withAnimation(.easeInOut){
                                    reader.scrollTo(homeData.selectedTab, anchor: .leading)
                                }
                            })
                        }
                    })
                    .opacity(homeData.offset > 200 ? Double((homeData.offset - 200) / 50) : 0)
                }
                
            }
            .frame(height: 40)

            if homeData.offset > 250{
                Divider()
            }
                
            
        }
        .padding(.horizontal)
        .frame(height: 100)
        .background(scheme == .dark ? Color.black : Color.white)
    }
    
    
    func getSize() -> CGFloat {
        if homeData.offset > 200{
            let progress = (homeData.offset - 200) / 50
            if progress <= 1.0 {
                return progress * 40
            }else{
             return 40
            }
        } else {
            return 0
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
