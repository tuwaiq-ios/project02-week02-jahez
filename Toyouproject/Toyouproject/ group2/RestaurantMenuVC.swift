//
//  RestaurantMenuVC.swift
//  Toyouproject
//
//  Created by Sara M on 29/02/1443 AH.
//

import UIKit


var resturant = resturants

class RestaurantMenuVC : UIViewController ,UITableViewDelegate, UITableViewDataSource

{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Resturant.menue.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "menue", for: indexPath) as! MenuCell
        
        let resturant = Restuarant[indexPath.row]
        
        menue.namecell.text = Restuarant.name
        menue.typecell.text = Restuarant.type
        menue.ratingcell.text =
        "\(Restuarant.rating) "
        menue.imagecell.image = UIImage(named: "")
        
        return menue
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "RestaurantMenuVc" , sender: Restuarant)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: seque, sender: sender)
        if seque.identifier != "RestaurantMenuVc" {
            return
        }
        let restaurantListVC = segue.destination as!
        RestaurantMenuVc
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        menutable.delegate = self
        menutable.dataSource = self
    }
}





@IBOutlet weak var resturantlogo: UIImageView!
@IBOutlet weak var resturantname: UILabel!
@IBOutlet weak var resturanttype: UILabel!
@IBOutlet weak var resturantstate: UILabel!
@IBOutlet weak var resturantrate: UILabel!
@IBOutlet weak var menutable: UITableView!
}



