//
//  FoodData.swift
//  AnimationHeaderDemo (iOS)
//
//  Created by 岡優志 on 2021/04/01.
//

import SwiftUI

struct FoodData: Identifiable{
    var id = UUID().uuidString
    var title: String
    var description: String
    var price: String
    var image: UIImage
    
}


var foods = [
    FoodData(title: "FoodMenu1", description: "ここにはFoodMenu1の魅力的な説明を書いて下さい。お客様がこのFoodをどうしても食べたくなるような説明でもいいでしょう。また、安心して食べれる様な説明もいいでしょう。とにかく自由に記載して下さい。", price: "¥1000", image: #imageLiteral(resourceName: "1")),
    FoodData(title: "FoodMenu2", description: "ここにはFoodMenu2の魅力的な説明を書いて下さい。お客様がこのFoodをどうしても食べたくなるような説明でもいいでしょう。また、安心して食べれる様な説明もいいでしょう。とにかく自由に記載して下さい。", price: "¥1000", image: #imageLiteral(resourceName: "6")),
    FoodData(title: "FoodMenu3", description: "ここにはFoodMenu3の魅力的な説明を書いて下さい。お客様がこのFoodをどうしても食べたくなるような説明でもいいでしょう。また、安心して食べれる様な説明もいいでしょう。とにかく自由に記載して下さい。", price: "¥1000", image: #imageLiteral(resourceName: "5")),
    FoodData(title: "FoodMenu4", description: "ここにはFoodMenu4の魅力的な説明を書いて下さい。お客様がこのFoodをどうしても食べたくなるような説明でもいいでしょう。また、安心して食べれる様な説明もいいでしょう。とにかく自由に記載して下さい。", price: "¥1000", image: #imageLiteral(resourceName: "2")),
    FoodData(title: "FoodMenu5", description: "ここにはFoodMenu5の魅力的な説明を書いて下さい。お客様がこのFoodをどうしても食べたくなるような説明でもいいでしょう。また、安心して食べれる様な説明もいいでしょう。とにかく自由に記載して下さい。", price: "¥1000", image: #imageLiteral(resourceName: "3")),
    FoodData(title: "FoodMenu6", description: "ここにはFoodMenu6の魅力的な説明を書いて下さい。お客様がこのFoodをどうしても食べたくなるような説明でもいいでしょう。また、安心して食べれる様な説明もいいでしょう。とにかく自由に記載して下さい。", price: "¥1000", image: #imageLiteral(resourceName: "4"))
    
]
