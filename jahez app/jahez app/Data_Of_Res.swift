//
//  Data_Of_Res.swift
//  jahez app
//
//  Created by Macbook on 01/03/1443 AH.
//

import UIKit

struct Food{
    let picfood : String
    let namefood : String
    let price : Double
    
}
struct Res{
    let name : String
    let logo : String
    let rating : Double
    let type : String
    let isOpen : Bool
    let menu : Array <Food>
    
}
let resturant = [Res ( name : "مايسترو" ,
                       logo : "maestro",
                       rating : 3 ,
                       type :  "بيتزا" ,
                       isOpen : true,
                       menu: [
                        Food (picfood: "بيتزا دجاج",
                              namefood: "بيتزا دجاج",
                              price: 20 ),
                       
                       Food(picfood: "بيتزا دجاج", namefood:"بيتزا دجاج", price:30 ),]),
                 
                 Res ( name : "مشاوي صح" ,
                      logo : "مشاوي صح",
                      rating : 4 ,
                      type :  "مشويات" ,
                      isOpen : true,
                      menu: [
                        Food (picfood: "بيتزا دجاج",
                              namefood: "بيتزا دجاج",
                              price: 20 )]),
                Res ( name : "هابي تشيكن" ,
                      logo : "هابي",
                      rating : 3.7,
                      type :  "برقر" ,
                      isOpen : true,
                      menu: [
                       Food (picfood: "بيتزا دجاج",
                             namefood: "بيتزا دجاج",
                             price: 20 )]),
                 Res ( name : "صيدلية النهدي" ,
                       logo :  "النهدي",
                       rating : 4.7,
                       type :  "صيدلية" ,
                       isOpen : true,
                       menu: [
                        Food (picfood: "بيتزا دجاج",
                              namefood: "بيتزا دجاج",
                              price: 20 )])
]



