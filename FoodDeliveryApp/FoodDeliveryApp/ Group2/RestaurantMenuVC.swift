//
//  RestaurantMenuVC.swift
//  FoodDeliveryApp
//
//  Created by dmdm on 07/10/2021.
//

import UIKit
class RestaurantMenuVc : UIViewController, UITableViewDelegate,
                         UITableViewDataSource {
    
    @IBOutlet weak var menutable: UITableViewCell!
     var resturant = resturants
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        resturant.count
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell" , for: IndexPath) as! menucell
         
        
        let resturant = Restuarant[indexPath.row]
        
        cell.resturant.image = UIImage(systemName: Restuarant.logo)
        cell.name.text = Restuarant.name
        cell.price.text = "\(Restuarant.rating)"
        cell.calories.text = "\(Restuarant.calories)"
        }
    return cell
    

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "RestaurantMenuVc" , sender: Restuarant)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: seque, sender: sender)
        if seque.identifier != "RestaurantMenuVc" {
            return
        }
        let restaurantListVC = seque.destination as!
            RestaurantMenuVc
        }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        menutable.delegate = self
        menutable.datasource = self
    }
    }
    
