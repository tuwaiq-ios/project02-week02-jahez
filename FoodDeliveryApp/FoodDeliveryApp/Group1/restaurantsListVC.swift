//
//  RestaurantsListVC.swift
//  FoodDeliveryApp
//
//  Created by dmdm on 07/10/2021.
//

import UIKit
class RestaurantListVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func RestuarantTableView(_ RestuarantTableView: UITableView, numberOfRowsInSection section: Int ) -> Int {
        return resturants.count
    }
    
    func RestuarantTableView(_ RestuarantTableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = RestuarantTableView.dequeueReusableCell(withIdentifier:"resturant", for: indexPath ) as! RestaurantCell
        
        let resturants = resturants[indexPath.row]
        
        RestaurantCell.name.text = resturant.name
        RestaurantCell.type.text = resturant.type
        RestaurantCell.resturantratingcell.text = "\(resturant.rating)"
        RestaurantCell.resturantimagecell.imgea = UIImage(named: resturant.logo)
        
        if resturant.isOpen {
            RestaurantCell.state.text = "open"
        }else{
            RestaurantCell.state.text = "closed"
        }
        return RestaurantCell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "Resturant cell", sender: resturants)
    }
    
    override func prepare(for seque: UIStoryboardSegue, sender: Any?) {
        
        if seque.identifier != "Resturant cell" {
            return
        }
        let restauranMenuVC = seque.description as! restauranMenuVC
        restauranMenuVC.resturant = sender as? Restuarant
        
    }
    
    @IBOutlet weak var RestuarantTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        RestuarantTableView.delegate = self
        RestuarantTableView.dataSource = self
    }
}
