//
//  VC2.swift
//  Sara.jahez
//
//  Created by SARA SAUD on 3/4/1443 AH.
//

import UIKit
class VC2: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restFromVC1?.foods.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let food = restFromVC1!.foods[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier:"FoodCell",
             for: indexPath) as! Cell2
        
        cell.foodName.text = food.name
        cell.foodPrice.text = "\(food.price)"
        cell.foodImage.image = UIImage(named: food.image)
        return cell
    }
    
    
    //after destinaiton
    var restFromVC1 : Rest?
    
    @IBOutlet weak var menuTV: UITableView!
    @IBOutlet weak var restLogo: UIImageView!
    @IBOutlet weak var restName: UILabel!
    @IBOutlet weak var restTybe: UILabel!
    @IBOutlet weak var restState: UILabel!
    @IBOutlet weak var restRating: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        restName.text = restFromVC1?.name
        restTybe.text = restFromVC1?.type
        restLogo.image = UIImage(named: restFromVC1!.logo)
        restState.text = restFromVC1?.state
        restRating.text = "\(restFromVC1!.rating)"
    
        menuTV.delegate = self
        menuTV.dataSource = self
    }
}
