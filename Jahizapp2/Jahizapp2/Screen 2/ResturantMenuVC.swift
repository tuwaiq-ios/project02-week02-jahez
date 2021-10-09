//
//  ResturantMenuVC.swift
//  Jahizapp2
//
//  Created by  HANAN ASIRI on 29/02/1443 AH.
//

import UIKit
class ResturantMenuVC : UIViewController, UITableViewDelegate,
                        UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurant.count
    }
    @IBOutlet var tableview2: UITableView!
    
        override func viewDidLoad() {
            super.viewDidLoad()
            
            
            tableview2.delegate = self
            tableview2.dataSource = self
          }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            let MenuCell = tableview2.dequeueReusableCell(withIdentifier: "MenuCell",
            for: indexPath) as! MenuCell
            
            let restaurants = restaurant [indexPath.row]
            
            MenuCell.image2.image = restaurants.logo
            MenuCell.name2.text = restaurants.name
            MenuCell.type2.text = restaurants.type
            MenuCell.rating2.text = "\(restaurants.rating)"
            
            
            
            if restaurant.isopen {
                MenuCell.restaurantisopen.text = "open"
                    } else {
                MenuCell.restaurantisopen.text = "close"
                    return MenuCell
                
                  }
          
            
            func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let restaurants = restaurants [indexPath.row]
            performSegue(withIdentifier: "open-menu", sender: restaurants)
          }
            func prepare(for segue: UIStoryboardSegue, sender: Any?) {
              super.prepare(for: segue, sender: sender)
              if segue.identifier != "MenuCell"{
                return
              }
            }
          }
        }
