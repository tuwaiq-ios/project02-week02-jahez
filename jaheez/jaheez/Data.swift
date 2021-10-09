//
//  Data.swift
//  jaheez
//
//  Created by ibrahim asiri on 01/03/1443 AH.
//

import Foundation

struct Restaurant{
    let name: String
    let image: String
    let rateing: Double
    let type: String
    let state: Bool
    public var menu: Array<Food>
}

struct Food{
    let image: String
    let name: String
    let price: Double
}

let restaurants = [Restaurant(name: "مايسترو",
                             image: "maestro",
                             rateing: 4.1,
                             type: "بيتزا",
                             state: true,
                              menu:[Food(image: "maestro2", name: "بيتزا مشوي", price: 35.0)]),
                   Restaurant(name: "عود هلم",
                              image: "hlm",
                              rateing: 4.9,
                              type: "مندي",
                              state: true,
                              menu: [Food(image: "bn1", name: "نص ذبيحة", price: 500)]),
                   Restaurant(name: "هرفي",
                              image: "hrfi",
                              rateing: 3.8,
                              type: "وجبات سريعة",
                              state: false,
                              menu: [Food(image: "hrfi2", name: "وجبة-بروست", price: 26)]),
                   Restaurant(name: "ون-منت",
                              image: "one",
                              rateing: 4.5,
                              type: "مشاوي",
                              state: true,
                              menu: [Food(image: "one2", name: "مشكل-مشاوي", price: 40)])
]

