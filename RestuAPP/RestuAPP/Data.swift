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


let restList = [ Rest(name: " Spice Show-سبايس شو",
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
Rest(name: "CHEF - شيف بايت",
                 type: "ستيك ",
                 State: "مفتوح",
                 rating: 5,
                 logo: "R2",
                 Foods: [
                   
                    Food(name:  "كوزو صاج", image: "R2i2", price: 65.99),
                    Food(name: "ورق عنب", image: "R2i3", price: 30.99),
                    Food(name: "واغيو ستيك", image: "R2i1", price: 78.99)
                 ]
),
                 Rest(name: "Nawah - نواة",
                                  type: "قهوه - حلويات ",
                                  State: "مفتوح",
                                  rating: 5,
                                  logo: "R3",
                                  Foods: [
                                     Food(name:"كورتادو", image: "R3i1", price: 15.59),
                                     Food(name: "سبانيش لاتيه", image: "R3i2", price: 16.99),
                                     Food(name: "فلات وايت", image: "R3i3", price: 15.59)
                                  ]
                 )
                   , Rest(name:  "Horof- حروف",
                          type: "مشروبات-حلويات ",
                          State: "مفتوح",
                          rating: 4,
                          logo: "R7",
                          Foods: [
                             Food(name: " كريب بستاشيو", image: "r7i1", price: 27.99),
                             Food(name: " ميني بان كيك مكس", image: "r7i2", price: 28.99),
                             Food(name: " رد فلفت ", image: "r7i3", price: 20.99)
                          ]
         ),
       
                 Rest(name: "Lavish- لافيش",
                                  type: "مشروبات-حلويات ",
                                  State: "مفتوح",
                                  rating: 4,
                                  logo: "R5",
                                  Foods: [
                                     Food(name: " لاتيه", image: "r5i1", price: 35.99),
                                     Food(name: " فرنش توست لافيش", image: "r5i2", price: 35.99),
                                     Food(name: " افطار لافيش", image: "r5i3", price: 35.99)
                                  ]
                 ) ,
                 Rest(name: "dough Source- دو سورس ",
                                  type: "مأكولات  ",
                                  State: "مفتوح",
                                  rating: 4,
                                  logo: "R6",
                                  Foods: [
                                     Food(name: " بيستو دجاج ", image: "r6i1", price: 35.99),
                                     Food(name:" فاهيتا الدجاج ", image: "r6i2", price: 35.99),
                                     Food(name:" كلوب ساندوتش ", image: "r6i3", price: 35.99)
                                  ]
                 ) ,
                
                 Rest(name: " Little Caesars- ليتل سيزر",
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

var counter: [String:Int] = [:]
