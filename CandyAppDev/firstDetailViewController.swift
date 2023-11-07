//
//  firstDetailViewController.swift
//  CandyAppDev
//
//  Created by binh phan on 11/7/23.
//

import UIKit

class firstDetailViewController: UIViewController {

    @IBOutlet weak var featureLabel: UILabel!
    
    @IBOutlet weak var featureImg: UIImageView!
    
    @IBOutlet weak var featureText: UITextView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        featureLabel.text = "Reese's Peanut Butter Halloween Snack Size"
        
        featureImg.image = UIImage(named: "Cat_2_Candy_2")
        
        featureText.text = "These classic REESE'S peanut butter candies in Halloween shapes will delight every candy-loving goblin and ghoul with otherworldly combinations of creamy peanut butter and smooth milk chocolate."
    }
}
