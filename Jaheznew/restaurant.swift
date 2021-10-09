//
//  restaurant.swift
//  Jaheznew
//
//  Created by Me .. on 02/03/1443 AH.
//

import UIKit

struct restaurant {
    let name:  String
    let logo:  String
    let rating:  Int
    let type:  String
    let isopen: Bool
    let menu: Array<food>
}

 struct food {
     let image:  String
     let name:  String
     let price: Double
 }
    
 let rest = [
    restaurant(name: "نواة", logo: "NN1", rating: 3, type: "مشروبات", isopen: true,
                        
    menu: [food(image:"kabt1", name: "كابتشينو", price: 20),
    food(image: "km", name: "كاراميل ماكياتو", price: 24),
    food(image: "esp1", name: "اسبريسو", price: 12)
]),
    restaurant(name: "شاورمر", logo: "sh1", rating: 4, type: "عربي", isopen: true,
   menu:  [food(image: "arbo", name: "وجبة عربو", price: 23),
   food(image: "rahia", name: "وجبة راهية", price: 20),
   food(image: "raj", name: "فرايز", price: 15)
]),
   restaurant(name: "وقت العصير", logo: "juc1", rating: 3, type: "عصائر", isopen: true,
   menu:[food(image: "kokt", name: "عصير كوكتيل", price: 15),
   food(image: "avoc", name: "عصير افوكادو", price: 15),
   food(image: "shamn", name: "عصير شمندر", price: 15)
]),
             
  restaurant(name: "كوخ الجمر", logo: "kuh", rating: 4, type: "وجبات سريعة", isopen: true,
  menu: [food(image: "meat", name: "برجر لحم", price: 22),
  food(image: "pota", name: "بطاطس ", price: 13),
  food(image: "ckick", name: "برجر دجاج", price: 25)
])
]
   
