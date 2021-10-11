//
//  Data.swift
//  RestuAPP
//
//  Created by MacBook on 04/03/1443 AH.
//

import UIKit


struct Rest {
    let name: String
    let type: String
    let State: String
    let rating: Int
    let logo: String
    
    let Foods: Array<Food>
}

struct Food {
    let name: String
    let image: String
    let price: Double
}


let restList = [ Rest(name: " سبايس شو",
                 type: "مأكولات إيطاليه",
                 State: "مفتوح",
                 rating: 5,
                 logo: "R1",
                 Foods: [
                    Food(name: " تكساس فرايز", image: "R1i1", price: 30.50),
                    Food(name: "سلطه فتوش", image: "R1i2", price: 32.50),
                    Food(name: "سلطه سيزر ", image: "R1i3", price: 32.50)
                 ]
),
Rest(name: "شيف بايت",
                 type: "ستيك ",
                 State: "مفتوح",
                 rating: 5,
                 logo: "R2",
                 Foods: [
                    Food(name: "واغيو ستيك", image: "R2i1", price: 78.99),
                    Food(name:  "كوزو صاج", image: "R2i2", price: 65.99),
                    Food(name: "ورق عنب", image: "R2i3", price: 30.99)
                 ]
),
                 Rest(name: "نواة",
                                  type: "قهوه - حلويات ",
                                  State: "مفتوح",
                                  rating: 5,
                                  logo: "R3",
                                  Foods: [
                                     Food(name:"كورتادو", image: "R4i1", price: 15.59),
                                     Food(name: "سبانيش لاتيه", image: "R4i2", price: 16.99),
                                     Food(name: "فلات وايت", image: "R4i3", price: 15.59)
                                  ]
                 )
                   ,
                 Rest(name: "ليتل سيزر ",
                                  type: "بيتزا",
                                  State: "مفتوح",
                                  rating: 4,
                                  logo: "R4",
                                  Foods: [
                                     Food(name: "بيتزا فيجي", image: "R4i1", price: 35.99),
                                     Food(name: "بيتزا رانش دجاج", image: "R4i2", price: 35.99),
                                     Food(name: " بيتزا تشيلي دجاج", image: "R4i3", price: 35.99)
                                  ]
                 )


]
