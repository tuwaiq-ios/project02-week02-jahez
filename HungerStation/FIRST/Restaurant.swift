//
//  restaurant .swift
//  HungerStation
//
//  Created by sara al zhrani on 29/02/1443 AH.
//

import UIKit

struct Food {
    let image:String
    let name:String
    let price: Double
}


struct Resturant{
    let name : String
    let logo : String
    let rating :Double
    let type : String
    let isOpen :Bool
    let menu: Array<Food >
}


let resturants =  [
    Resturant (
        name: "albaik",
        logo : "albaik",
        rating : 4.05,
        type : " fast food ",
        isOpen : true,
      
    
    menu:  [ Food(image: " brostied", name: "broasted" ,price: 26),
            Food(image: "moshab", name: "moshb", price: 20)
            
             ]),
    
    
    
    
    Resturant (
        name: "the cheesecake factory ",
        logo : " the cheesecake factory ",
        rating : 4.05,
        type: " Amrican",
        isOpen : true ,
         
    
    
        menu: [ Food(image: " beef steack",name: " beef ssteack ",price: 77),
              Food(image: "fish tacos ",name: "fish tacos",price: 66)
             ]),
    
    
    
    Resturant (
        name: "real burger",
        logo : " real burger ",
        rating : 4.05,
        type: " burger",
        isOpen : true ,
         
    
    
        menu:  [ Food(image: " burger",name: " beef burger",price: 67),
              Food(image: "chiken burger",name: "chiken burger",price: 56)
             ]),
    


    Resturant (
        name: "fridays",
        logo : " fridays",
        rating : 4.05,
        type: " burger",
        isOpen : true ,
         
    
    
        menu:  [ Food(image: "Fettuccine",name: " Fettuccine",price: 88),
              Food(image: "Friday's Twister",name: "Friday's Twister",price:
                        55)
             ]),
    ]
    
    
    
    
