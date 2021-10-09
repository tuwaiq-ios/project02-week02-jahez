//
//  ResturantTableViewController.swift
//  RAPP
//
//  Created by MacBook on 02/03/1443 AH.
//

import UIKit

class ResturantTableViewController: UITableViewController {
    
    let resturants = ResturantSourse().Resturants

    override func viewDidLoad() {
        super.viewDidLoad()
 
    }
    //1 section
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    //number of cell = num of resturants
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return resturants.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let resturant = resturants[indexPath.row]
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Resturant cell", for: indexPath) as? ResturantCell else {
            fatalError()
        }
        
        cell.configureCell(for: resturant)
        return cell
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard  let resturantController = segue.destination as? ResturantDetailController,
               let indexPath = tableView.indexPathForSelectedRow else {
            fatalError()
        }
        
        resturantController.resturant = resturants[indexPath.row]
    }

}
