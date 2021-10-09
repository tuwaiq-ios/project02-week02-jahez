
import Foundation
import UIKit

class RestaurantsVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return Data.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "key1", for: indexPath) as! RestaurantsCell
    
    let data = Data[indexPath.row]
    
    cell.logoC.image = UIImage (named: data.logoR)
    cell.nameC.text = data.nameR
    cell.typeC.text = data.typeR
    cell.ratingC.text = "\(data.ratingR)"
    
    if data.isOpenR == true{
      cell.isOpenC.text = "مفتوح"
    }
    else{
      if data.isOpenR == false {
        cell.isOpenC.text = "مغلق"
      }
    }
    return cell
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    performSegue(withIdentifier: "key2", sender: Data)
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    super.prepare(for: segue, sender: sender)
    if segue.identifier != "key2"{
      return
    }
    let menuVC = segue.destination as! MenuVC
    menuVC.data = sender as? Date
    
  }
  
  
  @IBOutlet weak var TV1: UITableView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    TV1.dataSource = self
    TV1.delegate = self
    
  }
}
