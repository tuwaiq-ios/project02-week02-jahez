//
//  Restaurant.swift
//  jahez pro
//
//  Created by Hassan Yahya on 29/02/1443 AH.
//

import UIKit

struct Restaurant {
    let name: String
    let logo: String
    let rating: Int
    let type: String
    let isOpen: Bool
    let menu:Array<food>
}

struct food {
    let image: String
    let name: String
    let price: Double
}

let restaurants = [
    Restaurant (
        name: "le choro station",
        logo: "le choros logo",
        rating: 5,
        type: "sweet",
        isOpen: true,
        menu: [
            food(image: "mini choros", name: "mini choros", price: 15)
        ]
    ),
    Restaurant(
        name: "century burger",
        logo: "century logo",
        rating: 4,
        type: "burger",
        isOpen: true,
        menu: [
            food(image: "century berger", name: "beef burger", price: 30)
        ]
    ),
    Restaurant(
        name: "alromnce",
        logo: "alromnce",
        rating: 3,
        type: "international",
        isOpen: true,
        menu: [
            food(image: "alromnce meat", name: "soggy meat", price: 70)
        ]
    ),
    Restaurant(
        name: "ennabi grill",
        logo: "ennabi grill",
        rating: 3,
        type: "barbecue",
        isOpen: true,
        menu: [
            food(image: "ennabi kabab", name: "ennabi meat", price: 28)
        ]
    )
]
