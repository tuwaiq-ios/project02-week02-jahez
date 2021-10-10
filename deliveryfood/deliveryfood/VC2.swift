//
//  VC2.swift
//  deliveryfood
//
//  Created by Sara M on 04/03/1443 AH.
//

import UIKit


class VC2: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var restFromVC1: Rest?
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restFromVC1?.foods.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let food = restFromVC1!.foods[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "FoodCell", for: indexPath) as! Cell2
       
        cell.foodName.text = food.name
        cell.foodImage.image = UIImage(named: food.image)
        cell.foodPrice.text = "\(food.price)"
       
        return cell
    }
    
    override func viewDidLoad() {
     super.viewDidLoad()
        
        restName.text = restFromVC1?.name
        restType.text = restFromVC1?.type
        restRate.text = "\(restFromVC1!.rating)"
        restState.text = restFromVC1?.state
        restLogo.image = UIImage(named: restFromVC1!.logo)
       
        menuTV.delegate = self
        menuTV.dataSource = self
    }
    
    @IBOutlet weak var restLogo: UIImageView!
    @IBOutlet weak var restName: UILabel!
    @IBOutlet weak var restRate: UILabel!
    @IBOutlet weak var restState: UILabel!
    @IBOutlet weak var restType: UILabel!
    @IBOutlet weak var menuTV: UITableView!
    
   
}
