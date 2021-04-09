//
//  FoodStore.swift
//  AnimationHeaderDemo (iOS)
//
//  Created by 岡優志 on 2021/04/08.
//

import SwiftUI
import Contentful
import Combine




let client = Client(spaceId: "prkf2xx6qvgl", accessToken: "_yul2oqW4UPpSNZaqoOlSVCrYFSrYDnWzN0aXo1GYBM")

func getArray(id: String, completion: @escaping([Entry]) -> ()) {
    let query = Query.where(contentTypeId: id)

    client.fetchArray(of: Entry.self, matching: query) { result in
        switch result {
        case .success(let array):
            DispatchQueue.main.async {
                completion(array.items)
            }
        case .failure(let error):
            print(error)
        }
    }
}

class FoodStore: ObservableObject {
    @Published var foodsData: [FoodData] = foods

    init() {
        getArray(id: "food"){ (items) in
            items.forEach{ (item) in
                self.foodsData.append(FoodData(
                                        title: "FoodMenu1",
                                        description: "ここにはFoodMenu1の魅力的な説明を書いて下さい。お客様がこのFoodをどうしても食べたくなるような説明でもいいでしょう。また、安心して食べれる様な説明もいいでしょう。とにかく自由に記載して下さい。",
                                        price: "¥1,000",
                                        image: #imageLiteral(resourceName: "4")))
            }
        }
    }
}
