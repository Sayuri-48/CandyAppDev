//
//  fifthViewController.swift
//  CandyAppDev
//
//  Created by binh phan on 10/31/23.
//

import UIKit

class fifthViewController: UIViewController {

    @IBOutlet weak var myImg: UIImageView!
    
    @IBOutlet weak var namelabel: UILabel!
    
    @IBOutlet weak var bioLabel: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Sayuri's Candy Reviews"
        
        myImg.image = UIImage(named: "myImg")
        
        namelabel.text = "Candy Reviewer: Sayuri Phan"
        
        bioLabel.text = "Aloha! My name is Sayuri Phan and I am a student of University of Hawaii - West Oahu. I am an accomplished designer and developer for 3D video game, and I enjoy eating candies during work at home. I'd beed lived in Japan more than 30 years. While I was in Japan, I ate more than 200 kinds of candies."

        // Do any additional setup after loading the view.
    }
    

}
