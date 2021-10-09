//
//  ResturantModel.swift
//  RAPP
//
//  Created by MacBook on 02/03/1443 AH.
//

import Foundation
import UIKit

class Resturant {
    //declearation for all
    let ResturantName: String
    let infoRes: String
    let phoneRes: String
    let addressRes: String
    let Res1i1: UIImage?
    let isOpen: String
    let tybeOfRes: String
    let Resi: UIImage?
    let rate: String
    
    init(ResturantName: String,  infoRes: String, phoneRes: String, addressRes: String, imageName: String, isOpen: String, tybeOfRes: String, resimage: String, rate: String){
    
    self.ResturantName = ResturantName
    self.infoRes = infoRes
    self.phoneRes = phoneRes
    self.addressRes = addressRes
    self.Res1i1 = UIImage(named: imageName)
    self.isOpen = isOpen
    self.tybeOfRes = tybeOfRes
    self.Resi = UIImage(named: resimage)
    self.rate = rate
}
}

struct Food {
    let menuImage: String
    let menuName: String
    
}
// data
struct ResturantSourse{
    let Resturants = [
        Resturant(ResturantName:  "burger king-برجر كينق ", infoRes: "برجر دجاج مشوي ", phoneRes: "0172222222", addressRes: "Abha",imageName: "r1i1", isOpen: "مفتوح", tybeOfRes: "وجبات سريعه", resimage: "r1", rate: "4.0"),
        
        Resturant(ResturantName:  "maistro-مايسترو",  infoRes: "بيتزا الخضروات و الطماطم", phoneRes: "0172222228", addressRes: "Abha",imageName: "r2i1", isOpen: "مفتوح", tybeOfRes: "بيتزا", resimage: "r2", rate: "4.0"),
        
        Resturant(ResturantName:  "Juice Time-عصير تايم",  infoRes: "عصير البرتقال الطبيعي", phoneRes: "0172222225", addressRes: "Abha",imageName: "r3i1", isOpen: "مفتوح", tybeOfRes: " مشروبات", resimage: "r3", rate: "5.0"),
        
        Resturant(ResturantName:  "Herfy-هرفي ", infoRes: "برجر دجاج  ", phoneRes: "0172222222", addressRes: "Abha",imageName: "bher", isOpen: "مفتوح", tybeOfRes: "وجبات سريعه", resimage: "r4", rate: "4.0"),
        
        
        Resturant(ResturantName:  "Broccoli-بروكلي", infoRes: "باستا", phoneRes: "0172222222", addressRes: "Abha",imageName: "brba", isOpen: "مفتوح", tybeOfRes: "مأكولات إيطاليه", resimage: "r6", rate: "4.5")
    ]
    
}

