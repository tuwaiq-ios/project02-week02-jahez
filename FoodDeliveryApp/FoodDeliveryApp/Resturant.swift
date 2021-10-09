import UIKit

struct Food {
    let name : String
    let image : String
    let calories : Int
    let price : Int
}
struct Restuarant {
    let name : String
    let logo : String
    let rating : Double
    let type : String
    let isOpen : Bool
    let menu: Array <Food>
    
}

let resturants = [
    Restuarant (
        name: "Lean Meals",
        logo: "leanMeals",
        rating: 4.0,
        type: "healthy",
        isOpen: true,
        menu: [
            Food (
                name: "Chicken sandwich",
                image: "CS",
                calories: 350,
                price: 18
            ),
            Food (
                name: "Mushroom chicken",
                image: "MC",
                calories: 350,
                price: 27
            ),
            Food (
                name: "Beef Burgar",
                image: "BB",
                calories: 600,
                price: 27
            )
            ]
     ),
    
    Restuarant(
        name: "Fit House",
        logo: "FT",
        rating: 4.0,
        type: "healthy",
        isOpen: true,
        
        menu: [Food ( name: "Chilli Beef",
                      image: "CB",
                      calories: 350,
                      price: 25),
               Food ( name: "Shrimp Pasta",
                      image: "SP",
                      calories: 350,
                      price: 27),
               Food (name: "Salmon",
                     image: "S",
                     calories: 400,
                     price: 27
               )
        ]
    ),
    
    Restuarant (
        name: "Fit Kitchen",
        logo: "FK",
        rating: 5.0,
        type: "healthy",
        isOpen: true,
        
        menu: [Food ( name: "Chicken Mastard",
                      image: "CM",
                      calories: 350,
                      price: 18),
               Food ( name: "Chicken Lemon",
                      image: "LC",
                      calories: 350,
                      price: 27),
               Food (name: "Shrimp Coconut milk",
                     image: "SC",
                     calories: 600,
                     price: 27
               )
        ]
    ),
    
    Restuarant(
        name: "Flex Kitchen",
        logo: "FKk",
        rating: 4.0,
        type: "healthy",
        isOpen: true,
        
        menu: [Food ( name: "Chicken Pesto",
                      image: "CPP",
                      calories: 350,
                      price: 18),
               Food ( name: "Chicken Spicy",
                      image: "CSS",
                      calories: 350,
                      price: 27),
               Food (name: "COKE diet",
                     image: "COKE",
                     calories: 0,
                     price: 3
               )
        ]
    ),
]
