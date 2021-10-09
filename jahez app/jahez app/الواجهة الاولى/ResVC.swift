//
//  ViewController.swift
//  jahez app
//
//  Created by Macbook on 01/03/1443 AH.
//

import UIKit

class ResVC: UIViewController , UITableViewDelegate , UITableViewDataSource {
    

    
    @IBOutlet weak var TableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
             return resturant.count
         }
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
             let cell = TableView.dequeueReusableCell(withIdentifier: "Res", for: indexPath) as! ResCell

         let rest = resturant[indexPath.row]
         cell.nameres.text = rest.name
         cell.imageres.image = UIImage (named: rest.logo)
         cell.TypeRes.text = rest.type
         cell.RatingRes.text = "\(rest.rating)"
        
        if rest.isOpen {
            cell.IsOpenR.text = "مفتوح"
        }
            else{
            cell.IsOpenR.text = "مغلق"
            }
     return cell
        }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "Res Cell", sender: resturant)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        if segue.identifier != "Res Cell"{
            return
        }
      let resMenuVc = segue.identifier as! ResMenuVc
    }

         override func viewDidLoad() {
             super.viewDidLoad()
             TableView.dataSource=self
             TableView.delegate=self


}
}
