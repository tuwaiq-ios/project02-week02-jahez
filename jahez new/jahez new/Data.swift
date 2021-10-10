//
//  Data.swift
//  jahez new
//
//  Created by mo Al-qhtani on 04/03/1443 AH.
//

import UIKit

struct Rest {
    let name: String
    let type: String
    let rating: Int
    let state: String
    let logo: String
    let foods: Array<Food>
}

struct Food {
    let name: String
    let image: String
    let price: Double
    
}

let restList = [
    Rest(
        name: "mohana",
        type: "shawrma",
        rating: 4,
        state: "Open",
        logo: "buur",
        foods: [
            Food(
                name: "shawrma",
                image: "buur",
                price: 9.85
            )
            
        ]
    ),
    Rest(name: "kodo",
         type: "meal",
         rating: 3,
         state: "Open",
         logo: "buur",
         foods: [
            Food(name: "leveno", image: "buur",
                 price: 24
                )
         
         ])
    
]


