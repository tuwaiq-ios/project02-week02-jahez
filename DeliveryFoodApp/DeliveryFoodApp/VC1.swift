//
//  VC1.swift
//  DeliveryFoodApp
//
//  Created by dmdm on 10/10/2021.
//

import UIKit

class VC1: UIViewController, UISceneDelegate, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let rest = restList[indexPath.row]
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "RestCell",
            for: indexPath) as! Cell1
        
        cell.restName.text = rest.name
        cell.restLogo.image = UIImage(named: rest.logo)
        cell.restRating.text = "\(rest.rating)"
        cell.restState.text = rest.state
        cell.restType.text = rest.type
        
        return cell
    }
    
    @IBOutlet weak var restTV: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        restTV.delegate = self
        restTV.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let rest = restList[indexPath.row]
        performSegue(
            withIdentifier: "show_menu",
            sender: rest)
        
    }
}
