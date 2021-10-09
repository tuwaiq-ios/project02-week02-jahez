//
//  resturant.swift
//  Jahez Project2
//
//  Created by SARA SAUD on 3/1/1443 AH.
//

import Foundation

struct Resturant {
    let name : String
    let logo : String
    let type : String
    let rating : Int
    let status :Bool
    let Menu:Array<Food>
}

struct Food {
    let image:String
    let name: String
    let price: Double
}

let resturants = [
    Resturant(
        name: "ALBAIK" ,
        logo: "albaik" ,
        type: "fast food" ,
        rating: 5 ,
        status: true,
        Menu: [
            Food(image: "baik1",name: "chicen",price: 30),
            Food(image: "baik2",name: "shrimp",price: 30),
            Food(image: "baik3",name: "corn",price: 30),
        ]
    ),Resturant(
        name: "ALTAZAJ" ,
        logo: "altazaj" ,
        type: "healthy food" ,
        rating: 4 ,
        status: true ,
        Menu: [
            Food(image: "tazaj1",name: "chicen",price: 30),
            Food(image: "tazaj2",name: "chresby Rool",price: 30),
            Food(image: "tazaj3",name: "Dynamet Chiecn",price: 30),
        ]
    ),Resturant(
        name: "imhungry" ,
        logo: "imhungry" ,
        type: "fast food" ,
        rating: 4 ,
        status: false,
        Menu: [
            Food(image: "imhungry1",name: "burger",price: 30),
            Food(image: "imhungry2",name: "Icecream",price: 25),
            Food(image: "imhungry3",name: "happymeale",price: 30),
        ]
    ),Resturant(
        name: "ANGEELINA" ,
        logo: "anjili" ,
        type: "french food" ,
        rating: 5 ,
        status: true,
        Menu: [
            Food(image: "anjili1",name: "FRUTE",price: 40),
            Food(image: "anjili2",name: "COFFIEE",price: 36),
            Food(image: "anjili3",name: "ECLIRE",price: 54),
        ]
    )
]



