//
//  fourthViewController.swift
//  CandyAppDev
//
//  Created by binh phan on 10/31/23.
//

import UIKit

class fourthViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var cat3List = ["Sour Patch Kids", "Haribo", "Welch's", "Favorite Day"]
    var reviewStars = ["★★★★★", "★★★★✩", "★★★✩✩", "★★✩✩✩"]
        
    var categoryThreeImagesData = [String]()
    
    @IBOutlet weak var tableView: UITableView!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cat3List.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let text = cat3List[indexPath.row]
        cell.detailTextLabel?.text = reviewStars[indexPath.row]
        cell.textLabel?.text = text
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        tableView.deselectRow(at: indexPath, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Sayuri's Candy Reviews"
        
        //Part 8
        let path = Bundle.main.path(forResource: "Property List", ofType: "plist")
        let dict = NSDictionary(contentsOfFile: path!)
        categoryThreeImagesData = dict!.object(forKey:"CategoryThreeImages") as! [String]

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                if segue.identifier == "mySegue"
                {
                    let s1 = segue.destination as! fourthDetailViewController
                    let imageIndex = tableView.indexPathForSelectedRow?.row
                    s1.imagePass = categoryThreeImagesData[imageIndex!]
                }
            }
}
