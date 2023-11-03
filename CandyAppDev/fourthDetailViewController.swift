//
//  fourthDetailViewController.swift
//  CandyAppDev
//
//  Created by binh phan on 11/2/23.
//

import UIKit

class fourthDetailViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    var imagePass: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let imageName = imagePass {
                    imageView.image = UIImage(named: imageName)
                }
        // Do any additional setup after loading the view.
    }
}
