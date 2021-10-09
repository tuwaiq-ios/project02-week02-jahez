//
//  ViewController.swift
//  Restaurant App
//
//  Created by Eth Os on 29/02/1443 AH.
//

import UIKit
import SwiftUI

class RestaurantList: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var restaurantTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        restaurantTableView.delegate = self
        restaurantTableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurants.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ResturantCell", for: indexPath) as! RestaurantCell
        
        let data = restaurants[indexPath.row]
        
        cell.restaurantImage.image = UIImage(named: data.logo)
        cell.restaurantName.text = data.name
        cell.restaurantType.text = data.type
        if data.isOpen {
            cell.restaurantState.text = NSLocalizedString("OPEN", comment: "")
            cell.restaurantState.textColor = UIColor.systemGreen
        }else {
            cell.restaurantState.text =  NSLocalizedString("CLOSED", comment: "")
            cell.restaurantState.textColor = UIColor.systemRed
        }
        cell.restaurantRating.text = "\(data.rateing)"
        cell.restaurantTime.text = data.time
        

        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let data = restaurants[indexPath.row]
        performSegue(withIdentifier: "toMenu", sender: data)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        if segue.identifier != "toMenu" {
            return
        }
        let restaurantVC = segue.destination as! MenuCollectionView
        restaurantVC.restaurant = sender as? Restaurant
    }
    
}

