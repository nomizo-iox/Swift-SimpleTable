//
//  ViewController.swift
//  SimpleTable
//
//  Created by Samuel F. Ademola on 2/9/20.
//  Copyright © 2020 Nomizo. All rights reserved.
//

import UIKit


// Added UITableViewDataSource and UITableViewDelegate to be addopted by ViewController
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // List of Restaurants Display in a Table
    var restaurantNames = ["Cafe Deadend", "Homei", "Teakha", "Cafe Loisl", "P etite Oyster",
                          "For Kee Restaurant", "Po's Atelier", "Bourke Street Bakery" ,
                          "Haigh's Chocolate", "Palomino Espresso", "Upstate", "Traif",
                          "Graham Av enue Meats And Deli", "Waffle & Wolf", "Five Leaves",
                          "Cafe Lore", "Confes sional", "Barrafina", "Donostia",
                          "Royal Oak", "CASK Pub and Kitchen"]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Return the number of rows in the section
        return restaurantNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "datacell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        
        cell.textLabel?.text = restaurantNames[indexPath.row]
        cell.imageView?.image = UIImage(named: "restaurant")
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

