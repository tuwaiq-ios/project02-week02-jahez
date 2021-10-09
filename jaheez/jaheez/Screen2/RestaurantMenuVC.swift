//
//  RestaurantMenuVC.swift
//  jaheez
//
//  Created by ibrahim asiri on 01/03/1443 AH.
//

import UIKit

class RestaurantMenuVC: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    var restaurent : Restaurant?
    
    @IBOutlet weak var restaurantLogo: UIImageView!
    @IBOutlet weak var reastaurantName: UILabel!
    @IBOutlet weak var restaurentTV: UITableView!
    @IBOutlet weak var reastaurantType: UILabel!
    @IBOutlet weak var reastaurantState: UILabel!
    @IBOutlet weak var reataurantRate: UILabel!
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        restaurantLogo.image = UIImage(named: restaurent!.image)
//        reastaurantName.text = restaurent?.name
//        reastaurantType.text = restaurent?.type
//        reataurantRate.text = "\(restaurent?.rateing)"
//
//        if ((restaurent?.state) != nil) {
//            reastaurantState.text = "مفتوح"
//        }
//        else{
//            reastaurantState.text = "مغلق"
//        }
//        restaurentTV.delegate = self
//        restaurentTV.dataSource = self
//
//
//    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurent?.menu.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let menuCell = tableView.dequeueReusableCell(withIdentifier: "menuCell", for: indexPath) as! MenuCell
        
        let food = restaurent!.menu[indexPath.row]
        
        menuCell.imaFood.image = UIImage(named: food.image)
        menuCell.nameFood.text = food.name
        menuCell.priceFood.text = "\(food.price)"
        
        return menuCell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        restaurentTV.delegate = self
        restaurentTV.dataSource = self

    }

    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "openMenu", sender: restaurants)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
//        if segue.identifier != "openMenu" {
//            return
//        }
        
        if let restaurantMenu = segue.destination as? RestaurantMenuVC {
            restaurantMenu.restaurent = sender as? Restaurant
    }
    }
   
}
