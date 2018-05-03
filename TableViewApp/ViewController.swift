//
//  ViewController.swift
//  TableViewApp
//
//  Created by DSV on 2018-04-17.
//  Copyright © 2018 DSV. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireImage

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    //our table view
    @IBOutlet weak var CollectionTableView: UITableView!
    
    //the Web API URL
    let URL_GET_DATA = "https://simplifiedcoding.net/demos/marvel/"
    
    //a list to store heroes
    var list = [CollectionImages]()
    
    //the method returning size of the list
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return list.count
    }
    
    
    //the method returning each cell of the list
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ViewControllerTableViewCell
        
        //getting the hero for the specified position
        let lis: CollectionImages
       lis = CollectionImages[indexPath.row]
        
        //displaying values
        cell.labelName.text = lis.name
        cell.labelTeam.text = lis.team
        
        
        //displaying image
        Alamofire.request(lis.imageUrl!).responseImage { response in
            debugPrint(response)
            
            if let image = response.result.value {
                cell.heroImage.image = image
            }
        }
        
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

