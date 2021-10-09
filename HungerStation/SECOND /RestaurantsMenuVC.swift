//
//  resturantmenuvc.swift
//  HungerStation
//
//  Created by sara al zhrani on 01/03/1443 AH.
//

import UIKit

class RestaurantsMenu  :UIViewController, UITableViewDelegate, UITableViewDataSource
{
        
    
    var restaurant  = Resturant
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        restaurant.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withReuseIdentifier: "menu", for: indexPath) as ! menuCell
    
    let restaurant = Resturant[IndexPath.row]
    cell.imagemenue.image=UIImage(named: restaurant.logo)
    cell.namelable.text = restaurant.name
    cell. pricelable.text = "\(restaurant.rating )"
    
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "RestaurantsMenuVC", sender:
                       )
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        if segue.identifier != "RestaurantsMenuVC"{
            return
            
        }
        let RestaurantListVC = segue.destination as!
             RestaurantListVC
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    menutable.dataSource = self
    menutable.delegate = self
    
    
    
    
    @IBOutlet weak var menue: UITableView!
    
    
            
}


