//
//  ViewController.swift
//  CandyAppDev
//
//  Created by binh phan on 10/31/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var bcImage: UIImageView!
    
    @IBOutlet weak var featureImg: UIImageView!
    
    @IBOutlet weak var learnButton: UIButton!
    
    /*
    @IBOutlet weak var featureLabel: UILabel!
    
    @IBOutlet weak var featureText: UITextView!
     */

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        navigationItem.title = "Sayuri's Candy Reviews"
        
        bcImage.image = UIImage(named: "bc_ima")
        featureImg.image = UIImage(named: "Cat_2_Candy_2")
        
        learnButton.setTitle("Learn More", for: UIControl.State.normal)
        
        /*
        featureLabel.text = ""
        
        featureText.text = ""
        */
    }
    
    /*
    @IBAction func learnButtonPressed(_ sender: Any)
    {
        bcImage.isHidden = true
        
        learnButton.isHidden = true
        
        featureLabel.text = "Reese's Peanut Butter Halloween Snack Size"
        
        featureText.text = "These classic REESE'S peanut butter candies in Halloween shapes will delight every candy-loving goblin and ghoul with otherworldly combinations of creamy peanut butter and smooth milk chocolate."
    }
    */
}
