//
//  ViewController.swift
//  Restaurant menu App-week2-Afnan
//
//  Created by Fno Khalid on 29/02/1443 AH.
//

import UIKit


    
struct Restaurant {
        let name: String
        let logo: String
        let rating: Double
        let type: String
        let isopen: Bool
        let menu: Array<Food>
      }
struct Food {
            let image: String
            let name: String
            let price: Double
          }
    
    
let restaurants = [
        
    Restaurant (
        name: "الطازج",
        logo: "Rest.1",
        rating: 4.0,
        type: "وجبات سريعة",
        isopen: true,
        menu: [
            Food(image: "Tazej.1", name: "كرسبي رول", price: 26),
            Food(image: "Tazej.2", name: "بطاطس مقلي", price: 10),
            Food(image: "Tazej.3", name: "فروج مشوي", price: 30),
            Food(image: "Tazej.4", name:  "بروست", price: 23),]
        )],
        
        
    Restaurant (
            name: "فرن الضيعة",
            logo: "Rest.2",
            rating: 3.0,
            type: "وجبات سريعة",
            isopen: true,
                menu: [
                  Food(image: "Furn.1", name: "عيش باللحم", price: 21)],
                  Food(image: "Furn.2", name: "بيتزا خضار", price: 18),
                  Food(image: "Furn.3", name: "بيتزا رانش الدجاج", price: 26),
                  Food(image: "Furn.4", name: "ميني بيتزا", price: 30),]
               )],
        
            
    Restaurant(
        name: "شاورمر",
        logo: "Rest.3",
        rating: 3.0,
        type: "وجبات سريعة",
        isopen: true),
            menu: [
              Food(image: "shawrma.1", name: "رقاقوز", price: 20),
              Food(image: "shawrma.2", name: "شاورما عربي", price: 18),
              Food(image: "shawrma.3", name: "شاورما الراهية", price: 22),
              Food(image: "shawrma.4", name:  "فرايز دجاج", price: 15),
              )],
          
            
    Restaurant(
        name: "صب واي" ,
        logo: "Rest.4" ,
        rating: 3.0 ,
        type: "وجبات سريعة",
        isopen: true,
            menu: [
              Food(image: "Sub.1", name: "شيباتا بيناني الفاخرة", price: 30),
              Food(image: "Sub.2", name: "ساندوتش تونة", price: 22),
              Food (image: "Sub.3", name: "ساندوتش دجاج", price: 25),
              Food (image: "Sub.4", name:  "ساندوتش دجاج مشوي", price: 27),]
            )],
