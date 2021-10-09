//
//  ResturantCell.swift
//  RAPP
//
//  Created by MacBook on 02/03/1443 AH.
//

import UIKit

class ResturantCell: UITableViewCell {

    @IBOutlet weak var ResturantNameLabel: UILabel!
    @IBOutlet weak var ResturantImagev: UIImageView!
    @IBOutlet weak var TypeOfRest: UILabel!
    @IBOutlet weak var ResturantisOpen: UILabel!
    
    @IBOutlet weak var ResRate: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func configureCell (for resturant: Resturant){
        ResturantNameLabel.text = resturant.ResturantName
        ResturantImagev.image = resturant.Resi
        ResturantisOpen.text = resturant.isOpen
        TypeOfRest.text = resturant.tybeOfRes
        ResRate.text = resturant.rate
        
    }

}
