//
//  Tab.swift
//  AnimationHeaderDemo (iOS)
//
//  Created by 岡優志 on 2021/04/01.
//

import SwiftUI

struct Tab: Identifiable{
    
    var id = UUID().uuidString
    var tab: String
    var foods: [FoodData]
    
}

var tabItems = [
    Tab(tab: "tabTitle1", foods: foods.shuffled()),
    Tab(tab: "tabTitle2", foods: foods.shuffled()),
    Tab(tab: "tabTitle3", foods: foods.shuffled()),
    Tab(tab: "tabTitle4", foods: foods.shuffled())

]
