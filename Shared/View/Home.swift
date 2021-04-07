//
//  Home.swift
//  AnimationHeaderDemo (iOS)
//
//  Created by 岡優志 on 2021/04/01.
//

import SwiftUI

struct Home: View {
    @StateObject var homedata = HomeViewModel()
    var body: some View {
        ScrollView{
            
            LazyVStack(alignment: .leading, spacing: 15, pinnedViews: [.sectionHeaders], content: {
               
                    GeometryReader{reader -> AnyView in
                        
                        let offset = reader.frame(in: .global).minY
                        
                        
                        return AnyView(
                        
                            Image("1")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: UIScreen.main.bounds.width, height: 250 + (offset > 0 ? offset : 0))
                                .cornerRadius(2)
                                .offset(y: (offset > 0 ? -offset : 0))

                        )
                    }
                    .frame(height: 250)
                   
                Section(header: HeaderView()) {
                    
                    ForEach(tabItems){ tab in
                         
                        VStack(alignment: .leading, spacing: 10, content: {
                            Text(tab.tab)
                                .font(.title2)
                                .fontWeight(.bold)
                                .padding(.bottom)
                                .padding(.leading)
                          
                            ForEach(foods){ foods in
                                CardView(food: foods)
                                
                            }
                            
                            Divider()
                                .padding(.top)
                        })
                    }
                }
            })
        }
        .overlay(
            Color.white
                .frame(height: UIApplication.shared.windows.first?.safeAreaInsets.top)
                .ignoresSafeArea(.all, edges: .top)
                .opacity(homedata.offset > 250 ? 1 : 0)
            ,alignment: .top
        )
        .environmentObject(homedata)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
