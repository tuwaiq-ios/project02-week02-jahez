//
//  VC2.swift
//  Jahez1
//
//  Created by Ahmed Assiri on 04/03/1443 AH.
//

import UIKit

class VC2: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restFromVC2?.foods.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let food = restFromVC2!.foods[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "FoodCell", for: indexPath)
        as! Cell2
        cell.foodName.text = food.name
        cell.foodImage.image = UIImage(named: food.image)
        cell.foodPrice.text = "\(food.price)"
        
        return cell
    }
    
    var restFromVC2: Rest?
    
    ///counter
    @IBOutlet weak var counter: UILabel!
    ///
    
    @IBOutlet weak var menuTV: UITableView!
    
    
    @IBOutlet weak var restLogo: UIImageView!
    
    @IBOutlet weak var restName: UILabel!
    
    @IBOutlet weak var restType: UILabel!
    
    @IBOutlet weak var restState: UILabel!
    
    @IBOutlet weak var restRating: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let Value = count1[restFromVC2!.name] ?? 0
        counter.text = "\(Value)"
        
        restName.text = restFromVC2?.name
        restType.text = restFromVC2?.type
        restState.text = restFromVC2?.state
        restLogo.image = UIImage(named:restFromVC2!.logo)
        restRating.text = "\(restFromVC2!.rating)"
        
        menuTV.delegate = self
        menuTV.dataSource = self
    }
}
