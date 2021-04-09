//
//  HomeViewModel.swift
//  AnimationHeaderDemo (iOS)
//
//  Created by 岡優志 on 2021/04/02.
//

import SwiftUI
import Contentful
import Combine

class HomeViewModel: ObservableObject{
    @Published var offset: CGFloat = 0
    @Published var selectedTab = tabItems.first!.tab
}
