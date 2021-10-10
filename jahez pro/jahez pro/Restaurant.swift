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
        name: "لي تشورو ستيشن",
        logo: "le choros logo",
        rating: 5,
        type: "sweet",
        isOpen: true,
        menu: [
            food(image: "mini choros", name: "ميني تشورو", price: 15)
        ]
    ),
    Restaurant(
        name: "سينشري برقر",
        logo: "لوقو سينشري",
        rating: 4,
        type: "burger",
        isOpen: true,
        menu: [
            food(image:"برقر سينشري", name:"برقر لحم", price: 30)
        ]
    ),
    Restaurant(
        name: "الرومانسيه",
        logo: "الرومانسيه",
        rating: 3,
        type: "international",
        isOpen: true,
        menu: [
            food(image: "لحم الرومانسيه", name: "مندي لحم", price: 70)
        ]
    ),
    Restaurant(
        name: "المشوي العنابي",
        logo: "المشوي العنابي",
        rating: 3,
        type: "barbecue",
        isOpen: true,
        menu: [
            food(image: "كباب العنابي", name: "كباب لحم", price: 28)
        ]
    )
]
