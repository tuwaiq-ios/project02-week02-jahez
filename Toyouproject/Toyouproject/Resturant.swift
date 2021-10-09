//
//  Resturant.swift
//  Toyouproject
//
//  Created by Sara M on 29/02/1443 AH.
//

import UIKit



struct food {
    let name : String
    let logo : String
    let price : Double
    
}

struct Resturant {
    let name: String
    let logo : String
    let rating: Double
    let type : String
    let isOpen : Bool
    let menu : Array <food>
    
}

let resturants = [
    Resturant (
        name: "Moment Burger",
        logo: "مومنت برجر",
        rating: 3.8,
        type: "وجبات سريعة",
        isOpen : true,
        menu:  [food (
                   name: "بريسكت بيف برجر",
                   logo: "بريسكت",
                   price: 51.0
        ),
                food(
                    name: " مومينت كرسبي تشيكن ",
                    logo: " كرسبي",
                    price: 49.0
        ),
                food(
                    name: "تاور برجر",
                    logo: "تاور",
                    price: 55.0
                )
               ]),
   Resturant(
       name: "شاريوش",
       logo: "شاريوش لوقو",
       rating: 4.0,
       type: "ساندويتشات",
       isOpen: true,
       menu:   [food(
                   name: "ساندويتش دجاج",
                   logo: "شاريوش دجاج",
                   price: 20.0
       ),
                food(
                    name: "مدورة لحم وجبة",
                    logo: "مدورة لحم",
                    price: 19
                ),
                food(
                    name: "بطاطس لحم",
                    logo: "بطاطس لحم",
                    price: 19.0
                )
               ] ) ,
    Resturant(
        name: "حاشي وشواية",
        logo: "حاشي لوقو",
        rating: 3.0,
        type: "مأكولات عربية",
        isOpen: true,
        menu:   [food(
                    name: "نفر دجاج مظبي",
                    logo: "مضبي",
                    price: 18.0
        ),
                 food(
                    name: "نفر مضغوط",
                    logo: "مضغوط",
                    price: 46.0
                 ),
                 food(
                    name: "نفر دجاج شواية",
                    logo: "شواية",
                    price: 21.0
                 )
        ]),
    Resturant(
        name: "بهارات المذاق الهندي",
        logo: "بهارات لوقو",
        rating: 5.0,
        type: " مأكولات هندية",
        isOpen: true,
        menu:  [food(
                    name: "برياني دجاج",
                    logo: "رز",
                    price: 33.0
        ),
                food(
                    name: "كاري دجاج",
                    logo: "كاري",
                    price: 36
                ),
                food(
                    name: "جمبري مشوي",
                    logo: "جمبري",
                    price: 35.0
                )
        ])
]
        
