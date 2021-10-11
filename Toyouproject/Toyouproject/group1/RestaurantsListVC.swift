//
//  res.swift
//  Toyouproject
//
//  Created by Sara M on 01/03/1443 AH.
//

import UIKit


class RestaurantsListVC :UIViewController ,UITableViewDelegate ,UITableViewDataSource {
    
    @IBOutlet weak var tableresturant: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableresturant.delegate = self
        tableresturant.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return resturants.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let RestaurantCell = tableView.dequeueReusableCell(withIdentifier: "resturant cell", for: indexPath) as! RestaurantCell
        
        let Resturant = resturants[indexPath.row]
        RestaurantCell.namecell.text = Resturant.name
        RestaurantCell.typecell.text = Resturant.type
        RestaurantCell.ratingcell.text =
        "\(Resturant.rating) "
        RestaurantCell.imagecell.image = UIImage(named: "")
        
        if Resturant.isOpen {
            RestaurantCell.opencell.text = "open"
        }else { RestaurantCell.opencell.text = "closed"
        }
        return RestaurantCell
        
        func tableresturant( tableView:UITableView, didSelectRowAt indexpath: IndexPath)
        {
            performSegue(withIdentifier: "resturant cell", sender:resturants) }
        
        
        override func prepare(for seque:  UIStoryboardSegue, sender:Any?) {
            super.prepare(for: seque, sender: sender)
            
            if seque.identifier != "RestaurantCell" {
                return
            }
            
            let restaurantMenuVC = seque.destination as! RestaurantMenuVC
            restaurantMenuVC.resturants = sender as!
            Resturant
        }
    }
    
}
