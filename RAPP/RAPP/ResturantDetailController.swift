//
//  ResturantDetailController.swift
//  RAPP
//
//  Created by MacBook on 02/03/1443 AH.
//

import UIKit

class ResturantDetailController: UIViewController {
//connection for second VC image and label
    @IBOutlet weak var NameResturantitem: UINavigationItem!
    @IBOutlet weak var infoRes: UILabel!
    @IBOutlet weak var phoneRes: UILabel!
    @IBOutlet weak var addressRes: UILabel!
    @IBOutlet weak var Res1i1: UIImageView!
    
    var resturant = Resturant(ResturantName:  "burger king", infoRes: "best burger in the world", phoneRes: "0509092064", addressRes: "abha",imageName: "r1", isOpen: "مفتوح", tybeOfRes: "وجبات سريعه",   resimage: "r1", rate: "4.0")
     
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
        
    }
    //func for data and calling
    func configureView(){
        NameResturantitem.title = resturant.ResturantName
        infoRes.text = resturant.infoRes
        phoneRes.text = resturant.phoneRes
        addressRes.text = resturant.addressRes
        Res1i1.image = resturant.Res1i1
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
