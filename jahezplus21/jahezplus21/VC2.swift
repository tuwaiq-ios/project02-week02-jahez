//
//  VC2.swift
//  jahezplus21
//
//  Created by خلود سلطان علي آل عبدالرحمن  on 04/03/1443 AH.
//

import UIKit
class VC2:UIViewController,UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return  restfromvc1?.foods.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        
        let food = restfromvc1!.foods[indexPath.row]
        let cell  =
        tableView.dequeueReusableCell(withIdentifier: "foodcell", for: indexPath) as! Cell2
        
        cell.foodImage.text = food.name
        cell.foodPrice.text = "\(food.price)"
        cell.foodName.image = UIImage(named: food.Image)
        
        return cell
    }
  
    
    var restfromvc1: Rest?
    
    @IBOutlet weak var menueTV: UITableView!
    
    @IBOutlet weak var restLogo: UIImageView!
    
    
    @IBOutlet weak var restName: UILabel!
    
    @IBOutlet weak var restType: UILabel!
    
    @IBOutlet weak var restState: UILabel!
    
    @IBOutlet weak var restRating: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        restName.text = restfromvc1?.name
        restType.text=restfromvc1?.type
        restState.text=restfromvc1?.isopen
        restLogo.image=UIImage(named: restfromvc1!.logo)
        restRating.text="\(restfromvc1!.rating)"
        
        menueTV.delegate=self
        menueTV.dataSource=self
        
    }
    
}
