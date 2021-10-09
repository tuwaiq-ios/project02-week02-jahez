//
//  Restaurant.swift
//  Restaurant App
//
//  Created by Eth Os on 29/02/1443 AH.
//

import Foundation

struct Food{
    let name: String
    let image: String
    let price: Double
}
struct Restaurant {
    let name: String
    let logo: String
    let type: String
    let rateing: Int
    let time: String
    let isOpen: Bool
    let location: String
    let menu: Array<Food>
}


let restaurants = [
    
    Restaurant(name: NSLocalizedString("Gorno", comment: ""),
               logo: "1",
               type: NSLocalizedString("Italian", comment: ""),
               rateing: 4,
               time: "9 am - 10 pm",
               isOpen: true,
               location: "https://goo.gl/maps/ZFZ48V7mizkWkAic7",
               menu: [Food(name: NSLocalizedString("Pizza", comment: ""), image: "1-1", price: 50.0),
                      Food(name:NSLocalizedString("Fettuccine Alfredo", comment: ""), image: "1-2", price: 55.5),
                      Food(name: NSLocalizedString("Tuscan", comment: ""), image: "1-3", price: 95.0),]),
    Restaurant(name: NSLocalizedString("Gold Sushi", comment: ""),
               logo: "2",
               type: NSLocalizedString("Japanese", comment: ""),
               rateing: 5,
               time: "9 am - 1 am",
               isOpen: true,
               location:"https://www.google.com/maps/place/جولد+سوشي+كلوب%E2%80%AD/@32.0601235,50.0856584,7z/data=!4m5!3m4!1s0x0:0x73d63b2e221a5022!8m2!3d24.7527016!4d46.6249654?hl=ar",
               menu: [Food(name: NSLocalizedString("Vegetable Sushi", comment: ""), image: "2-1", price: 100.0),
                      Food(name: NSLocalizedString("Crispy Sushi", comment: ""), image: "2-2", price: 97.0),
                      Food(name: NSLocalizedString("Original Sushi", comment: ""), image: "2-3", price: 89.0)]),
    Restaurant(name: NSLocalizedString("Tim Hortons", comment: ""),
               logo: "3",
               type: NSLocalizedString("Coffee", comment: ""),
               rateing: 5,
               time: "6 am - 10 pm",
               isOpen: false,
               location: "https://goo.gl/maps/1V5etV7sCMN5pgiZ8",
               menu: [Food(name: NSLocalizedString("Black Coffee", comment: ""), image: "3-1", price: 10.0),
                      Food(name: NSLocalizedString("White Mocha", comment: ""), image: "3-2", price: 10.0),
                      Food(name: NSLocalizedString("Donuts", comment: ""), image: "3-3", price: 15.0)]),
    Restaurant(name: NSLocalizedString("Maharani", comment: ""),
               logo: "4",
               type: NSLocalizedString("Indian", comment: ""),
               rateing: 5,
               time: "11 am - 11 pm",
               isOpen: false,
               location: "https://goo.gl/maps/PJG7mHWiWADPVt3t6",
               menu: [Food(name: NSLocalizedString("Chicken Masala", comment: ""), image: "4-1", price: 30.0),
                      Food(name: NSLocalizedString("Chicken Curry", comment: ""), image: "4-2", price: 30.0),
                      Food(name:NSLocalizedString("Indian Salad", comment: ""), image: "4-3", price: 18.0)]),
    Restaurant(name: NSLocalizedString("McDonalds", comment: ""),
               logo: "5",
               type: NSLocalizedString("Fast Food", comment: ""),
               rateing: 5,
               time: "7 am - 3 am",
               isOpen: true,
               location: "https://goo.gl/maps/4wn8iutfjPWqJjVL9",
               menu: [Food(name: NSLocalizedString("Grand Chicken Special", comment: ""), image: "5-1", price: 29.0),
                      Food(name: NSLocalizedString("Mac Arabic Chicken", comment: ""), image: "5-2", price: 29.0),
                      Food(name: NSLocalizedString("Chicken McNuggets", comment: ""), image: "5-3", price: 29.0)]),
    Restaurant(name: NSLocalizedString("Starbucks", comment: ""),
               logo: "6",
               type: NSLocalizedString("Coffee", comment: ""),
               rateing: 5,
               time: "7 am - 11 pm",
               isOpen: true,
               location: "https://goo.gl/maps/FyTJTsR2p6WmtgC68",
               menu: [Food(name: NSLocalizedString("Americano", comment: ""), image: "6-1", price: 17.0),
                      Food(name: NSLocalizedString("Ice White Mocha", comment: ""), image: "6-2", price: 18.0),
                      Food(name: NSLocalizedString("Croissant", comment: ""), image: "6-3", price: 15.0)]),
    Restaurant(name: NSLocalizedString("2 Eat", comment: ""),
               logo: "7",
               type: NSLocalizedString("Fast Food", comment: ""),
               rateing: 5,
               time: "11 am - 11 pm",
               isOpen: false,
               location: "https://goo.gl/maps/GfDsCeY3VZWC1GQN8",
               menu: [Food(name: NSLocalizedString("2 Eight Burger", comment: ""), image: "7-1", price: 70.0),
                      Food(name: NSLocalizedString("Truffle Fries", comment: ""), image: "7-2", price: 20.0),
                      Food(name: NSLocalizedString("2 Eat Salad", comment: ""), image: "7-3", price: 30.0)]),
    Restaurant(name: NSLocalizedString("Kiwit", comment: ""),
               logo: "8",
               type: NSLocalizedString("Juices and Ice Cream", comment: ""),
               rateing: 3,
               time: "11 am - 11 pm",
               isOpen: true,
               location: "https://goo.gl/maps/nEN55hFLGLGRHf8q6",
               menu: [Food(name: NSLocalizedString("Mango Juice", comment: ""), image: "8-1", price: 20.0),
                      Food(name: NSLocalizedString("Watermelon Ice Cream", comment: ""), image: "8-2", price: 30.0),
                      Food(name: NSLocalizedString("Blueberry Ice Cream", comment: ""), image: "8-3", price: 30.0)]),
    Restaurant(name: NSLocalizedString("Shrimp Nation", comment: ""),
               logo: "9",
               type: NSLocalizedString("Seafood", comment: ""),
               rateing: 4,
               time: "11 am - 11 pm",
               isOpen: false,
               location: "https://goo.gl/maps/NDXQ3kspWEUXhcgM8",
               menu: [Food(name: NSLocalizedString("Oyster", comment: ""), image: "9-1", price: 80.0),
                      Food(name: NSLocalizedString("Shrimp", comment: ""), image: "9-2", price: 70.0),
                      Food(name: NSLocalizedString("Dynamite", comment: ""), image: "9-3", price: 30.0)]),
    Restaurant(name: NSLocalizedString("A3nab", comment: ""),
               logo: "10",
               type: NSLocalizedString("Arabic Foods", comment: ""),
               rateing: 4,
               time: "11 am - 11 pm",
               isOpen: true,
               location: "https://goo.gl/maps/NDXQ3kspWEUXhcgM8",
               menu: [Food(name: NSLocalizedString("Grape Leaves", comment: ""), image: "10-1", price: 20.0),
                      Food(name: NSLocalizedString("Cabbage", comment: ""), image: "10-2", price: 20.0),
                      Food(name: NSLocalizedString("Mixed Mehshi", comment: ""), image: "10-3", price: 40.0)]),
]
