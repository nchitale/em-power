//
//  CardTableViewController.swift
//  Empower
//
//  Created by Nandini  on 8/2/16.
//  Copyright © 2016 Empower. All rights reserved.
//

import UIKit

class CardTableViewController: UITableViewController {
    
    // MARK: Properties
    var cards = [Card]() //declares a property on this class and initializes it w/ default val - empty array of Card objects
                        //by making cards a variable instead of constant, you make the array mutable - can add items after you initialize it

    var categoryName: String = ""
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        //load the data
        loadCards()
    }
    
    func loadCards() {
        
        //switch based on category name
        switch categoryName {
            case "Computer Science":
                let photo1 = UIImage(named: "CS Rosie")!
                let card1 = Card(name: "CS Rosie", photo: photo1)!
                cards += [card1];
            case "Engineering":
                let photo1 = UIImage(named: "Engr Girl")!
                let card1 = Card(name: "Engr Girl", photo: photo1)!
                cards += [card1];
            case "Math":
                let photo1 = UIImage(named: "Math board")!
                let card1 = Card(name: "Math board", photo: photo1)!
                cards += [card1];
            case "Medicine":
                let photo1 = UIImage(named: "Doctor")!
                let card1 = Card(name: "Doctor", photo: photo1)!
                cards += [card1];
            case "Science":
                let photo1 = UIImage(named: "Blue Brain")!
                let card1 = Card(name: "Blue Brain", photo: photo1)!
                cards += [card1];
            case "Technical Management":
                let photo1 = UIImage(named: "Sheryl")!
                let card1 = Card(name: "Sheryl", photo: photo1)!
                cards += [card1];
            default:
                fatalError("Invalid Category Name")
            
        }
        
        /*
        let photo1 = UIImage(named: "Alloy")!
        let card1 = Card(name: "Chemist 1", photo: photo1)!
        
        let photo2 = UIImage(named: "Doctor")!
        let card2 = Card(name: "Chemist 2", photo: photo2)!
        
        let photo3 = UIImage(named: "Office")!
        let card3 = Card(name: "Chemist 3", photo: photo3)!
        
        cards += [card1, card2, card3];
        */
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cards.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        // Table view cells are reused and should be dequeued using a cell identifier
        let cellIdentifier = "CardTableViewCell"
        
        //let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! CardTableViewCell
        
        // Fetches the appropriate card for the data source layout
        let card = cards[indexPath.row]
        
        cell.nameLabel.text = card.name
        cell.photoImageView.image = card.photo

        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let cardDetailViewController = segue.destinationViewController as! CardViewController //downcasts destination view controller to a CardViewController - forced type cast - if unsuccessful, app will crash
        
        if let selectedCardCell = sender as? CardTableViewCell { //tries to downcast sender to a CardCell - if unsucessful, this if stmt isn't executed
            
            //fetches the Card object corresponding to the selected cell in table view
            let indexPath = tableView.indexPathForCell(selectedCardCell)!
            let selectedCard = cards[indexPath.row]
            
            //assigns Card object to the card property of the destination view controller, an instance of CardViewController
            cardDetailViewController.card = selectedCard
            
        }
    }

}
