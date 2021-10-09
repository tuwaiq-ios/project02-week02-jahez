
import UIKit

class ResturantlistVC : UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableview: ResturantlistVC!
    override func viewDidLoad() {
        
        tableview.delegate  = self
        tableview.dataSource  = self
    }
    
      func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurant.count
       }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let ResturantCell = tableview.dequeueReusableCell(withIdentifier: "ResturantCell", for: indexPath) as! ResturantCell
                    
        let restaurant = restaurant [indexPath.row]
                   
        ResturantCell.logolable.image = restaurant.logo
        ResturantCell.namelable.text = restaurant.name
        ResturantCell.typelable.text = restaurant.type
        ResturantCell.ratelable.text = "\(restaurant.rating)"
                   
                   
            if restaurant.isopen {
                ResturantCell.restaurantisopen.text = "open"
            } else {
                        ResturantCell.restaurantisopen.text = "close"
                    return ResturantCell
                
            }
                  
                    
                    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
                     let restaurant = restaurant [indexPath.row]
                    performSegue(withIdentifier: "open-menu", sender: restaurant)
                     }
                    
                    func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                      super.prepare(for: segue, sender: sender)
                      if segue.identifier != "resturantCell" {
                        return
                    }
                    }
                    }
                    }
