//
//  Restaurant.swift
//  jahez new
//
//  Created by Maram Al shahrani on 02/03/1443 AH.
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
        name: "burger king",
        logo: "bur logo",
        rating: 5,
        type: "fast food",
        isOpen: true,
        menu: [
            food(image: "bur1", name: "burger chicken", price: 25)
        ]
    ),
    Restaurant(
        name: "shawermar",
        logo: "shaw logo",
        rating: 4,
        type: "shawerma",
        isOpen: true,
        menu: [
            food(image:"shaw1", name:"shwerma arbo", price: 25)
        ]
    ),
    Restaurant(
        name: "meystro",
        logo: "myst logo",
        rating: 3,
        type: "pizza",
        isOpen: true,
        menu: [
            food(image: "pizza1", name: "vegetable pizza", price: 45)
        ]
    ),
    Restaurant(
        name: "broccoli",
        logo: "broc logo",
        rating: 4,
        type: "pasta & pizza",
        isOpen: true,
        menu: [
            food(image: "broc1", name: "pasta", price: 28)
        ]
    )
]
