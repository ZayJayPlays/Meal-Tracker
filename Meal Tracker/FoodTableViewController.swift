//
//  FoodTableViewController.swift
//  Meal Tracker
//
//  Created by Zane Jones on 3/7/23.
//

import UIKit

class FoodTableViewController: UITableViewController {
    
    var meals: [Meal] {
        var breakfast = Meal(name: "Breakfast", food: [Food(name: "Oatmeal", description: "Oats and hot water."), Food(name: "Mate", description: "Mate herb tea"), Food(name: "Orange", description: "Healthy fruit")])
        var lunch = Meal(name: "Lunch", food: [Food(name: "Sandwich", description: "PB&J"), Food(name: "Chips", description: "Cheese Flavored"), Food(name: "Fig Bar", description: "Blueberry Flavored")])
        var dinner = Meal(name: "Dinner", food: [Food(name: "Quesadilla", description: "Cheese and Tortilla"), Food(name: "Chili", description: "Beans Soup"), Food(name: "Ice Cream", description: "Cookies and Cream")])
        return [breakfast, lunch, dinner]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return meals.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return meals[section].food.count
        
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Food", for: indexPath)
        let meal = meals[indexPath.section]
        let food = meal.food[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = food.name
        content.secondaryText = food.description
        cell.contentConfiguration = content
        
        
        
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        meals[section].name
    }
    
}
