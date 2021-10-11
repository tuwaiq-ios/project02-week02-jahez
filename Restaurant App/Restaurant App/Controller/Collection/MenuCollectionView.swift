//
//  MenuCollectionView.swift
//  Restaurant App
//
//  Created by Eth Os on 01/03/1443 AH.
//

import UIKit

class MenuCollectionView: UIViewController ,UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var locattionButton: UIButton!
    
    @IBOutlet weak var resturantImage: UIImageView!
    @IBOutlet weak var restaurentName: UILabel!
    @IBOutlet weak var restaurantType: UILabel!
    @IBOutlet weak var restaurantState: UILabel!
    @IBOutlet weak var resturantRating: UILabel!
    @IBOutlet weak var restaurantTime: UILabel!
    
    @IBOutlet weak var countLabel: UILabel!
    
    @IBOutlet weak var menuCV: UICollectionView!
    
    @IBOutlet weak var flowLayout: UICollectionViewFlowLayout!
    
    var restaurant : Restaurant?

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        countLabel.text = " visitor: \(visitor[restaurant!.name] ?? 0)"
        
        locattionButton.titleLabel?.text = NSLocalizedString("Location", comment: "")
        
        let space:CGFloat = 3.0
        let dimension = (view.frame.size.width - (200 * space)) / 3.0

        flowLayout.minimumInteritemSpacing = space
        flowLayout.minimumLineSpacing = space
        flowLayout.itemSize = CGSize(width: dimension, height: dimension)
        
        resturantImage.image = UIImage(named: restaurant!.logo)
        restaurentName.text = restaurant!.name
        restaurantType.text = restaurant!.type
        resturantRating.text = "\(restaurant!.rateing)"
        restaurantTime.text = restaurant!.time
        
        if restaurant!.isOpen {
            restaurantState.text = NSLocalizedString("OPEN", comment: "")
            restaurantState.textColor = UIColor.green
        }else{
            restaurantState.text = NSLocalizedString("CLOSED", comment: "")
            restaurantState.textColor = UIColor.red
        }
        
        menuCV.delegate = self
        menuCV.dataSource = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return restaurant?.menu.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "menuCell", for: indexPath) as! MenuCollectionCell
        
        let food = restaurant!.menu[indexPath.row]
        
        cell.foodImage.image = UIImage(named: food.image)
        cell.foodImage.contentMode = UIImageView.ContentMode.scaleAspectFill
        cell.foodName.text = food.name
        cell.foodPrice.text = "SAR \(food.price)"
        
        return cell
    }
    
    @IBAction func locattionButton(_ sender: Any) {
        if let url = URL(string: restaurant!.location) {
                    UIApplication.shared.open(url, options: [:])}
    }
}
