//
//  ResturentMenu.swift
//  jahez 11
//

//


import UIKit

class ResturentMenu : UIViewController , UITableViewDelegate , UITableViewDataSource {
    
    var resturant2 : Restarent!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    tabelView2.delegate = self
    tabelView2.dataSource = self
        
    }
    
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var tybeLabel: UILabel!
    @IBOutlet weak var stauteLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var tabelView2: UITableView!

func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return restarents.count
}

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let food1 = tableView.dequeueReusableCell(withIdentifier:"menucell", for: indexPath) as! menucell
    let cell2 = restarents[indexPath.row]
    
    food1.foodImage.image = UIImage(named: cell2.logo)
    food1.foodLabel.text = cell2.name
    food1.foodPrice.text = "\(cell2.rating)"
    
    return food1
}
    
    
    
    //func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
   //     performSegue (withIdentifier: "menucell", sender: restarents)
   //     }
  // override func prepare(for segue: UIStoryboardSegue, sender: Any?) {resturant2
   // }
  //  if segue.identifier != " ResturentMenu" {
  //      return
  //  }
  //  let resturentMenu = segue.destination as! ResturentMenu
  //      resturentMenu . resturent2 = sender as! Restarent

 //   }
}
