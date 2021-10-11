//
//  Data.swift
//  jahezplus21
//
//  Created by خلود سلطان علي آل عبدالرحمن  on 04/03/1443 AH.
//

import UIKit
struct Rest{
    let name:String
    let type:String
    let isopen:String
    let rating:Int
    let logo:String
    let foods:Array<Food>
    
   
}


struct Food {
    let name:String
    let Image:String
    let price:Double
    
}



let restList = [
    Rest(name: "subway",
         type: "sandwich",
         isopen: "open",
         rating: 4,
         logo: "subway",
         foods: [Food(name: "chicken sandwich", Image: "sub1", price: 15.99)]),
    
    Rest(name: "herfy",
         type: "fastfood",
         isopen: "closed",
         rating: 3,
         logo: "herfy",
         foods:[Food(name: "burger chicken spicy meal", Image: "her", price: 25.5)]),
    
    Rest(name: "domenozpizza",
         type: "pizza",
         isopen: "open",
         rating: 4,
         logo: "domenozpizza",
         foods:[ Food(name: "pizza chicken  ransh",
                      Image: "doc11",
                      price: 15.9),Food(name: "Dynamite Chicken",
                                        Image: "bob1",
                                        price: 12.5)]),
    Rest(name: "KFC",
         type: "FastFood",
         isopen: "closed",
         rating: 2,
         logo: "KFC", foods:[Food(name: "ckickn sandwich",
                                 Image: "KFC12",
                                  price: 30.99)]),
                             
    ]


var counter:[String:Int]=[:]



