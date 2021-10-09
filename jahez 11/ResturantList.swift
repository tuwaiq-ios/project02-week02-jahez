//
//  ViewController.swift
//  jahez 11
//

import UIKit

class ResturentList : UIViewController , UITableViewDelegate , UITableViewDataSource {
    
    @IBOutlet weak var ResturentTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ResturentTableView.delegate = self
        ResturentTableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  restarents.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let Cell = tableView.dequeueReusableCell(withIdentifier: "resturentcell" , for: indexPath) as! ResturentCell
        
        let restarent = restarents[indexPath.row]
        
        Cell.nameLabel.text = restarent.name
        Cell.typeLabel.text = restarent.type
        Cell.logo.image = UIImage(named: restarent.logo )
        Cell.ratingLabel.text = "\(restarent.rating)"
        if restarent.isOpen  {
            Cell.stauteLabel.text = "مفتوح"
        }
        else {
            Cell.stauteLabel.text = "مغلق"
        }
        return Cell
    
    }
    
func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
       performSegue(withIdentifier: "resturentcell" , sender: restarents)
   }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
    if segue.identifier != "resturentcell" {
       return
    }
        let rest = segue.destination as! ResturentMenu
        rest.resturant2 = sender as! Restarent
       }
}
