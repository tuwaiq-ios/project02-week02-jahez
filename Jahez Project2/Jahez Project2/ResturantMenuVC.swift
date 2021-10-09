//
//  ResturantMenuVC.swift
//  Jahez Project2
//
//  Created by SARA SAUD on 3/1/1443 AH.
//

import UIKit
class ResturantMenuVC: UIViewController,UITableViewDelegate,UITableViewDataSource
{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return resturant?.Menu.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let menucell = tableView.dequeueReusableCell(withIdentifier: "menu", for: indexPath) as! MenuCell
      
        let food = resturant!.Menu[indexPath.row]
        menucell.FoodName.text = food.name
        menucell.FoodImage.image = UIImage(named: food.image)
        menucell.FoodPrice.text = "\(food.price)"
        
        return menucell
    
    }
  
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      MenuTV.delegate = self
      MenuTV.dataSource = self
    }
    
    var resturant: Resturant?
    
    @IBOutlet weak var MenuTV: UITableView!
    

    
    @IBOutlet weak var ResturantLogo: UIImageView!
    
    @IBOutlet weak var ResturantName: UILabel!
    
    @IBOutlet weak var ResturantTybe: UILabel!
    
    @IBOutlet weak var ResturantStatus: UILabel!
    
    @IBOutlet weak var ResturantRate: UILabel!
}


        

