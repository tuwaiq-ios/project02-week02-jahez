//
//  ResMenuVc.swift
//  jahez app
//
//  Created by Macbook on 01/03/1443 AH.
//

import UIKit
class ResMenuVc: UIViewController , UITableViewDelegate , UITableViewDataSource  {
    var resturant : Res?
    
    @IBOutlet weak var ResMenuO: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return resturant?.menu.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellm = tableView.dequeueReusableCell(withIdentifier: ("ResMenu"), for: indexPath) as! MenuCell
        
        let food = resturant!.menu[indexPath.row]
        
        cellm.namefood.text = food.namefood
        cellm.logofood.image = UIImage(named: food.picfood)
        cellm.prfood.text = "\(food.price)"
        
        return cellm
        
    }
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "Menu Cell", sender: resturant)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        if segue.identifier != "Menu Cell"{
            return
        }
      let RMvc = segue.identifier as! ResMenuVc
    }

    override func viewDidLoad() {
         super.viewDidLoad()
         
        ResMenuO.delegate = self
        ResMenuO.dataSource = self
    }
    }
    
