//
//  Resturant.swift
//  jahez 11
//
//

import UIKit

struct Restarent {
    let name :String
    let logo : String
    let rating : Double
    let type : String
    let isOpen : Bool
    let menu : [menu]
}

struct menu {
    let image : String
    let name : String
    let price : Double
}

let restarents = [
    Restarent(name: "بيتزا", logo:"pizza", rating: 3.0, type:"fast food", isOpen:true,         menu:[menu(image: "pizza1", name:"بيتزا خضار", price: 27.0),
              menu(image:"pizza2", name:"بيتزا داينتميت", price: 26.0),
              menu(image:"pizza3", name:"بيتزا رانش", price: 20.0)]),
    
    Restarent(name: "وقت العصير", logo:"عصير", rating: 4.5, type:"مشروبات", isOpen:true, menu:[menu(image: "رمان", name:"عصير رمان", price: 17.0),
              menu(image:"تفاح", name:"عصير تفاح", price: 16.0),
              menu(image:"كوكتيل", name:"عصير كوكتيل", price: 20.0)]),
    
    
    Restarent(name: "fish resturant", logo:"مطعم السمك", rating: 2.0, type:"fast food", isOpen:true, menu:[menu(image: "سمك فيليه", name:"سمك فيليه", price: 102.0),
                           menu(image:"سمك مشوي", name:"سمك مشوي", price: 100.0),
                            menu(image:"سمك مقلي", name:"سمك مقلي", price: 120.0)]),

    
    Restarent(name: "البيك", logo:"البيك", rating: 5.0, type:"fast food", isOpen:true, menu:[menu(image: "مسحب", name: "مسحب البيك", price: 16.0),
              menu(image:"شاورما", name:"شاورما البيك", price: 10.0),
              menu(image:"بروست", name:"بروست البيك", price: 15.0)])
]

