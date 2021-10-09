//
//  ResturantView.swift
//  Jahizapp2
//
//  Created by  HANAN ASIRI on 29/02/1443 AH.
//
import UIKit
  struct restaurants {
    let name: String
    let logo: String
    let rating: Double
    let type: String
    let isopen: Bool
    let menu: Array<food>
  }
    
      struct food {
      let image: String
      let name: String
      let price: Double
          
      let restaurant = [
        restaurants (name : "Mac",
        logo : "Maclogo",
        rating: 4.0,
        type : "Burger",
        isopen : true,
        menu : [
         food (image : "bur3-1", name : "crespy ", price : 35) ,
        food (image : "fris" ,  name : "yumee"  ,  price : 23 ),]
         ),

        restaurants (
        name :  "Burger 10" ,
        logo : "burrger-1" ,
        rating : 5 ,
        type : "Burger",
        isopen : true,
          menu : [
          food (image : "bur2-1", name : "Burger", price : 32),
          food (image : "fris", name : "yumm", price : 30 ),]
         ),
        
        restaurants (
            name : "pizza hut"
            , logo : "pizza1",
            rating : 3.0,
            type : "pizza",
            isopen : true,
          menu : [
            food(image : "piz", name : "yumm ", price : 40),
            food (image : "fris", name : "crespy" , price : 15 ),]
          ),
                
                
            restaurants (
            name : "albaik" ,
            logo : "albaik-2",
            rating : 4.5 ,
            type : "crespy",
            isopen : true,
          menu : [
            food (image : "baik", name : "yumm " , price : 15),
           food (image : "fris" , name : "crespy" , price : 8 ),]
           )
           ]
           }
