//
//  vc1.swift
//  jahezplus21
//
//  Created by خلود سلطان علي آل عبدالرحمن  on 04/03/1443 AH.
//

import UIKit
class vc1:UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let rest=restList[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "RestCell",for:indexPath) as! Cell1
        cell.restName.text=rest.name
        cell.restLoge.image=UIImage(named: rest.logo)
        cell.restRating.text="\(rest.rating)"
        cell.restState.text = rest.isopen
        cell.restType.text = rest.type
        
        
    
        return cell
    }
    
    @IBOutlet weak var restTV: UITableView!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        restTV.delegate=self
        restTV.dataSource=self
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
     
        let rest = restList[indexPath.row]
        performSegue(withIdentifier: "show_menue", sender: rest)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        
        let vc2 = segue .destination as! VC2
        vc2.restfromvc1 = sender as? Rest
    }
    
}

