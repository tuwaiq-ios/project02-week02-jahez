//
//  Data.swift
//  HUNGERSTATION1
//
//  Created by Tsnim Alqahtani on 04/03/1443 AH.
//

import UIKit

struct Rest {
    let name: String
    let type: String
    let state: String
    let rating: Int
    let logo : String
    let foods : Array<Food>
}

struct Food{
    let name:  String
    let image: String
    let price: Double
}



let restList = [
    Rest(name: "كودو",
         type: "وجبات سريعه",
         state: "مفتوح",
         rating: 4,
         logo: "كودو لوقو",
         
         foods: [ Food(
            name: "levano",
            image: "bur",
            price: 13.00)]),
 
    Rest(name: "هرفي",
         type: "وجبات سريعه",
         state: "مفتوح",
         rating: 4,
         logo: "هرفي لوقو",
         foods: [
         Food(name: "سوبر تشكن",
              image:"سوبر تشكن" ,
             price: 20.99)
         ]
        )
    ]
         
        
