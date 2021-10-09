//
//  RestaurentListVC.swift
//  Jaheznew
//
//  Created by Me .. on 02/03/1443 AH.
//

import UIKit

class RestaurentListVC: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    
    @IBOutlet weak var table1: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        table1.dataSource = self
        table1.delegate = self
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rest.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let restCell = tableView.dequeueReusableCell(withIdentifier: "restaurentCell", for: indexPath) as! RestaurantCell
        
        let restaurant = rest[indexPath.row]
        restCell.imagerest.image = UIImage(named: restaurant.logo)
        restCell.namerest.text = restaurant.name
        restCell.typerest.text = restaurant.type
        restCell.raterest.text = "\(restaurant.rating)"
        
        if restaurant.isopen {
            restCell.openrest.text = "open"
        }else{
            restCell.openrest.text = "closed"
    }
        return restCell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {performSegue(withIdentifier: "restlist", sender:rest)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        if segue.identifier != "restlist"{
        return
    }
        let restMenu = segue.destination as! RestaurentMenuVC
        restMenu.restarant = sender as? restaurant
    }
}
    
    


