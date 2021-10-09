//
//  RestaurantMenuVC.swift
//  Restaurant menu App-week2-Afnan
//
//  Created by Fno Khalid on 01/03/1443 AH.
//

import UIKit

class RestaurantMenuVC : UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var restaurant: Restaurant?
    
    @IBOutlet var ReastaurantMenuVC: UIView!
    
    
    @IBOutlet weak var Menulist: UITableView!
    
    @IBOutlet weak var foodcell: UITableViewCell!
    
    @IBOutlet weak var restaurantcell: UIView!
    
    @IBOutlet weak var reastaurantimage1: UIImageView!
    
    @IBOutlet weak var reastaurantname1: UILabel!
    
    @IBOutlet weak var reastauranttype1: UILabel!
    
    @IBOutlet weak var reastaurantrating1: UILabel!
    
    @IBOutlet weak var reastaurantisopen1: UILabel!
    
    @IBOutlet weak var menucell: UITableViewCell!
    
    @IBOutlet weak var menucell2: menuCell!
    
    @IBOutlet weak var foodimage: UIImageView!
    
    @IBOutlet weak var foodname: UILabel!
    
    @IBOutlet weak var foodprice: UILabel!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  restaurant?.menu.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let menuCell =
        tableView.dequeueReusableCell(withIdentifier: "menu", for: indexPath) as! menuCell
        
        
        let food = restaurant!.menu[indexPath.row]
        
        menucell.FoodImage.image = UIImage(named: food.image)
        menucell.FoodName.text = food.name
        menucell.FoodPrice.text = "\(food.price)"
        
        return menuCell 
    }
    
    override func viewDidLoad() {
        
        RestaurantMenuVC.delegate = self
        RestaurantMenuVC.dataSource = self
    }
    }

