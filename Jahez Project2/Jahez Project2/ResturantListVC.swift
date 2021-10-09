//
//  ResturantListVC.swift
//  Jahez Project2
//
//  Created by SARA SAUD on 3/1/1443 AH.
//

import Foundation
import UIKit

class ResturantListVC: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var ResturatsTable: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return resturants.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let ResturantCell = tableView.dequeueReusableCell(withIdentifier: "ResturantCell", for: indexPath) as! ResturantCell
        
        let resturant = resturants[indexPath.row]
        
        performSegue(withIdentifier:"OpenMenu", sender: 0 )
        
        ResturantCell.ResturantName.text = resturant.name
        
        ResturantCell.ResturantLogo.image = UIImage(named: resturant.logo)
        
        ResturantCell.ResturantTybe.text = resturant.type
        
        
        if resturant.status {
            ResturantCell.ResturantStatus.text = "open"
            
        } else {
            ResturantCell.ResturantStatus.text = "closed"
            
        }
        
        ResturantCell.ResturantRating.text = "\(resturant.rating)"
        
        
        return ResturantCell
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        super.prepare(for: segue, sender: sender)
        if segue.identifier != "open_menu" {
            return
        }
        let ResturantMenuVC = segue.destination as! ResturantMenuVC
        ResturantMenuVC.resturant = sender as? Resturant
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        //
        
    }
}
