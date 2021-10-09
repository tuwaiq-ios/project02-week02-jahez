
import Foundation

struct Restaurants {
  
  let nameR: String
  let logoR: String
  let ratingR: String
  let typeR: String
  let isOpenR: Bool
  
  let menuR: Array<Food>
}
struct Food {
  let logoF: String
  let nameF: String
  let priceF: Double
  
}

let Data = [
  Restaurants(
  nameR: "مقهى ايت اوز",
  logoR: "oz.jpeg",
  ratingR: "\(4.3) ⭐️",
  typeR: "قهوه، مشروبات، حلويات",
  isOpenR: true,
  menuR: [Food(logoF: "oz1.jpeg", nameF: "فلايت وايت مع كوكيز", priceF: 20),
          Food(logoF: "oz2.jpeg", nameF: "كعكه الحليب بالزعفران", priceF: 15)
         ]
),
  Restaurants(
  nameR: "دانكن دونت",
  logoR: "dun.jpeg",
  ratingR: "\(4.3) ⭐️",
  typeR: "مشروبات، حلويات، قهوه",
  isOpenR: true,
  menuR: [Food(logoF: "dun1.jpeg", nameF: "عرض الجمعه", priceF: 20),
          Food(logoF: "dun2.jpeg", nameF: "كرك شاي", priceF: 10)
         ]
),
  Restaurants(
  nameR: "باسكن روبنز",
  logoR: "bas.jpeg",
  ratingR: "\(3.8) ⭐️",
  typeR: "حلويات، ايس كريم",
  isOpenR: false,
  menuR: [Food(logoF: "bas1.jpeg", nameF: "مغرفه التوفير", priceF: 15),
          Food(logoF: "bas2.jpeg", nameF: "ايس كريم", priceF: 8)
         ]
),
  Restaurants(
  nameR: "دومينوز بيتزا",
  logoR: "dom.jpeg",
  ratingR: "\(4.0) ⭐️",
  typeR: "بيتزا، ماكولات سريعه",
  isOpenR: true,
  menuR: [Food(logoF: "dom1.jpeg", nameF: "داينمايت بيتزا", priceF: 33),
          Food(logoF: "dom2.jpeg", nameF: "عرض بدون شروط", priceF: 29)
          ]
),
  Restaurants(
  nameR: "شاورمر",
  logoR: "sha.jpeg",
  ratingR: "\(3.0) ⭐️",
  typeR: "شاورما، ساندويشات",
  isOpenR: false,
  menuR: [Food(logoF: "sha1.jpeg", nameF: "طلبك بطلبين", priceF: 29),
          Food(logoF: "sha2.jpeg", nameF: "شاورما عربي", priceF: 30)
         ]
),
  Restaurants(
  nameR: "البرجر الطازج",
  logoR: "bur.jpeg",
  ratingR: "\(3.5) ⭐️",
  typeR: "ماكولات سريعه، ساندويشات",
  isOpenR: true,
  
  menuR: [Food(logoF: "bur1.jpeg", nameF: "برجر دجاج", priceF: 26),
          Food(logoF: "bur2.jpeg", nameF: "برجر لحم", priceF: 30)
         ]
),
]
