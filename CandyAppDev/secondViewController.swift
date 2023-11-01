//
//  secondViewController.swift
//  CandyAppDev
//
//  Created by binh phan on 10/31/23.
//

import UIKit

class secondViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var cat1List = ["Oreo", "Mother's Cookie", "Kellogg's Scooby Grahams", "Favorite Day"]
    var reviewStars = ["★★★✩✩", "★★★★★", "★★★★✩", "★★★✩✩"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cat1List.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
               let text = cat1List[indexPath.row]
               cell.detailTextLabel?.text = reviewStars[indexPath.row]
               cell.textLabel?.text = text
               return cell
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Sayuri's Candy Reviews"
        
        

        // Do any additional setup after loading the view.
    }
    

}
