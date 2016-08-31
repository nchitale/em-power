//
//  CategoryTableViewController.swift
//  Empower
//
//  Created by Nandini  on 8/7/16.
//  Copyright © 2016 Empower. All rights reserved.
//

import UIKit

class CategoryTableViewController: UITableViewController {
    
    // MARK: Properties
    
    // array of STEM field categories
    var categories = [NCategory]()
    
    // list view of people within a field
    var sample = CardTableViewController()
    
    // MARK: Actions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //set top of screen title
        navigationItem.title = "Empower"
        
        loadCategories()
    }
    
    // Loads 6 STEM category photos and associated objects into view.
    func loadCategories () {
        
        let photo1 = UIImage(named: "CS")!
        let category1 = NCategory(name: "Computer Science", photo: photo1, people: sample)!
        
        let photo2 = UIImage(named: "Engineering")!
        let category2 = NCategory(name: "Engineering", photo: photo2, people: sample)!
        
        let photo3 = UIImage(named: "Math")!
        let category3 = NCategory(name: "Math", photo: photo3, people: sample)!
        
        let photo4 = UIImage(named: "Medicine")!
        let category4 = NCategory(name: "Medicine", photo: photo4, people: sample)!
        
        let photo5 = UIImage(named: "Science")!
        let category5 = NCategory(name: "Science", photo: photo5, people: sample)!
        
        let photo6 = UIImage(named: "TechnicalManagement")!
        let category6 = NCategory(name: "Technical Management", photo: photo6, people: sample)!
        
        categories += [category1, category2, category3, category4, category5, category6]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }

    // Sets up a particular STEM field category
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "CategoryTableViewCell"
        
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! CategoryTableViewCell

        // Fetches appropriate category for the data source layout
        let category = categories[indexPath.row]
        cell.photoImageView.image = category.photo

        return cell
    }

    // MARK: - Navigation

    // Preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let cardDetailViewController = segue.destinationViewController as! CardTableViewController //downcasts destination view controller to a CardViewController - forced type cast - if unsuccessful, app will crash
        
        if let selectedCardCell = sender as? CategoryTableViewCell { //tries to downcast sender to a Category Cell - if unsucessful, this if stmt isn't executed
            
            //fetches the CardTableViewController object corresponding to the selected cell in table view
            let indexPath = tableView.indexPathForCell(selectedCardCell)!
            let selectedCard = categories[indexPath.row]
            
            //assigns category name to the card property of the destination view controller, an instance of CardTableViewController
            cardDetailViewController.categoryName = selectedCard.name
            
        }
    }

}
