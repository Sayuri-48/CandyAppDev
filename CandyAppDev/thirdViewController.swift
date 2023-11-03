//
//  thirdViewController.swift
//  CandyAppDev
//
//  Created by binh phan on 10/31/23.
//

import UIKit

class thirdViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var cat2List = ["Hershey's Cookies'n Crème", "Reese's Peanut Butter", "Hershey's Kisses", "Kit Kat"]
        var reviewStars = ["★★★✩✩", "★★★★★", "★★★★✩", "★★★✩✩"]
        
        var categoryTwoImagesData = [String]()
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cat2List.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
                       let text = cat2List[indexPath.row]
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
        categoryTwoImagesData = dict!.object(forKey:"CategoryTwoImages") as! [String]

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                if segue.identifier == "mySegue"
                {
                    let s1 = segue.destination as! thirdDetailViewController
                    let imageIndex = tableView.indexPathForSelectedRow?.row
                    s1.imagePass = categoryTwoImagesData[imageIndex!]
                }
            }

}
