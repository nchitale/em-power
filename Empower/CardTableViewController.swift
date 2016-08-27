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
        
        //set the top of screen to show what category we're in
        navigationItem.title = categoryName
        
        //load the data
        loadCards()
    }
    
    func loadCards() {
        
        //switch based on category name
        switch categoryName {
            case "Computer Science":
                
                let photo1 = UIImage(named: "CS1")!
                let text1 = "cs1"
                let card1 = Card(name: "Sarah Clatterbuck", photo: photo1, backgroundText: text1, subfield:"")!
                
                let photo2 = UIImage(named: "CS2")!
                let text2 = "cs2"
                let card2 = Card(name: "Divya Jain", photo: photo2, backgroundText: text2, subfield:"")!
                
                let photo3 = UIImage(named: "CS3")!
                let text3 = "cs3"
                let card3 = Card(name: "Angie Byron", photo: photo3, backgroundText: text3, subfield:"")!
                
                let photo4 = UIImage(named: "CS4")!
                let text4 = "cs4"
                let card4 = Card(name: "Avni Shah", photo: photo4, backgroundText: text4, subfield:"")!
                
                let photo5 = UIImage(named: "CS5")!
                let text5 = "cs5"
                let card5 = Card(name: "Amanda Wixted", photo: photo5, backgroundText: text5, subfield:"")!
                
                let photo6 = UIImage(named: "CS6")!
                let text6 = "cs6"
                let card6 = Card(name: "Alicia Perez", photo: photo6, backgroundText: text6, subfield:"")!
                
                cards += [card1, card2, card3, card4, card5, card6];
            
            case "Engineering":
                
                let photo1 = UIImage(named: "Eng1")!
                let text1 = "Eng1"
                let card1 = Card(name: "Erin Brooks", photo: photo1, backgroundText: text1, subfield:"")!
                
                let photo2 = UIImage(named: "Eng2")!
                let text2 = "Eng2"
                let card2 = Card(name: "Roma Agrawal", photo: photo2, backgroundText: text2, subfield:"")!
                
                let photo3 = UIImage(named: "Eng3")!
                let text3 = "Eng3"
                let card3 = Card(name: "Chen-Nee Chuah", photo: photo3, backgroundText: text3, subfield:"")!
                
                let photo4 = UIImage(named: "Eng4")!
                let text4 = "Eng4"
                let card4 = Card(name: "Sabrina Thompson", photo: photo4, backgroundText: text4, subfield:"")!
                
                let photo5 = UIImage(named: "Eng5")!
                let text5 = "Eng5"
                let card5 = Card(name: "Propa Ghosh", photo: photo5, backgroundText: text5, subfield:"")!
                
                let photo6 = UIImage(named: "Eng6")!
                let text6 = "Eng6"
                let card6 = Card(name: "Roxann Laird", photo: photo6, backgroundText: text6, subfield:"")!
                
                cards += [card1, card2, card3, card4, card5, card6];
            
            case "Math":

                let photo1 = UIImage(named: "Math1")!
                let text1 = "Math1"
                let card1 = Card(name: "Maryam Mirzakhani", photo: photo1, backgroundText: text1, subfield:"")!
                
                let photo2 = UIImage(named: "Math2")!
                let text2 = "Math2"
                let card2 = Card(name: "Manuela Campanelli", photo: photo2, backgroundText: text2, subfield:"")!
                
                let photo3 = UIImage(named: "Math3")!
                let text3 = "Math3"
                let card3 = Card(name: "Caitlin Smallwood", photo: photo3, backgroundText: text3, subfield:"")!
                
                let photo4 = UIImage(named: "Math4")!
                let text4 = "Math4"
                let card4 = Card(name: "Lisa LaVange", photo: photo4, backgroundText: text4, subfield:"")!
                
                cards += [card1, card2, card3, card4];
            
            case "Medicine":
            
                let photo1 = UIImage(named: "Med1")!
                let text1 = "Med1"
                let card1 = Card(name: "Kathy Magliato", photo: photo1, backgroundText: text1, subfield:"")!
                
                let photo2 = UIImage(named: "Med2")!
                let text2 = "Med2"
                let card2 = Card(name: "Leigh Curl", photo: photo2, backgroundText: text2, subfield:"")!
                
                let photo3 = UIImage(named: "Med3")!
                let text3 = "Med3"
                let card3 = Card(name: "Patricia Bath", photo: photo3, backgroundText: text3, subfield:"")!
                
                let photo4 = UIImage(named: "Med4")!
                let text4 = "Med4"
                let card4 = Card(name: "Allison Martin", photo: photo4, backgroundText: text4, subfield:"")!
                
                let photo5 = UIImage(named: "Med5")!
                let text5 = "Med5"
                let card5 = Card(name: "Susan Blumenthal", photo: photo5, backgroundText: text5, subfield:"")!
                
                let photo6 = UIImage(named: "Med6")!
                let text6 = "Med6"
                let card6 = Card(name: "Anna Wu", photo: photo6, backgroundText: text6, subfield:"")!
                
                cards += [card1, card2, card3, card4, card5, card6];
            
            case "Science":
                
                let photo1 = UIImage(named: "Sci1")!
                let subfield1 = "CHEMISTRY"
                let text1 = "DISCOVERY CHEMIST\n\n\"My field of computational modeling may not always produce the correct answers, but it provides hypotheses which lead to new designs. Being able to apply this field in project-team settings with a common goal of delivering molecules for unmet needs is a wonderful opportunity.\"\n\nThink about all the people in the world with devastating diseases and conditions that rely on medication. Vickie and her team work directly in developing these new drugs to solve the world\'s toughest medical needs. As a Senior Scientist in Discovery Chemistry at Genentech, a leading biopharmaceutical company, Vickie uses computational chemistry, a branch of chemistry that utilizes computer simulations, to guide the design and discovery of small molecule drugs. Her innovative early-stage research has the potential to identify drugs to treat breast cancer!\n\nEducation:\nPh.D. Macromolecular and Cellular Structure and Chemistry (The Scripps Research Institute)\nB.S. Chemistry (Yale)\n\nCheck out some of Vickie\'s noteworthy publications:\nhttp://www.gene.com/scientists/our-scientists/vickie-tsui"
                let card1 = Card(name: "Vickie Tsui", photo: photo1, backgroundText: text1, subfield: subfield1)!
                
                let photo2 = UIImage(named: "Sci2")!
                let text2 = "Sci2"
                let card2 = Card(name: "Pardis Sabeti", photo: photo2, backgroundText: text2, subfield:"")!
                
                let photo3 = UIImage(named: "Sci3")!
                let text3 = "Sci3"
                let card3 = Card(name: "Fabiola Gianotti", photo: photo3, backgroundText: text3, subfield:"")!
                
                let photo4 = UIImage(named: "Sci4")!
                let text4 = "Sci4"
                let card4 = Card(name: "Kristen Marhaver", photo: photo4, backgroundText: text4, subfield:"")!
                
                let photo5 = UIImage(named: "Sci5")!
                let text5 = "Sci5"
                let card5 = Card(name: "Cori Bargmann", photo: photo5, backgroundText: text5, subfield:"")!
                
                let photo6 = UIImage(named: "Sci6")!
                let text6 = "Sci6"
                let card6 = Card(name: "Emily Levesque", photo: photo6, backgroundText: text6, subfield:"")!
                
                cards += [card1, card2, card3, card4, card5, card6];
            
            case "Technical Management":
                
                let photo1 = UIImage(named: "TM1")!
                let text1 = "TM1"
                let card1 = Card(name: "Susan O'Day", photo: photo1, backgroundText: text1, subfield:"")!
                
                let photo2 = UIImage(named: "TM2")!
                let text2 = "TM2"
                let card2 = Card(name: "Michele Kang", photo: photo2, backgroundText: text2, subfield:"")!
                
                let photo3 = UIImage(named: "TM3")!
                let text3 = "TM3"
                let card3 = Card(name: "Dona Sarkar", photo: photo3, backgroundText: text3, subfield:"")!
                
                let photo4 = UIImage(named: "TM4")!
                let text4 = "TM4"
                let card4 = Card(name: "April Underwood", photo: photo4, backgroundText: text4, subfield:"")!
                
                let photo5 = UIImage(named: "TM5")!
                let text5 = "TM5"
                let card5 = Card(name: "Eva-Lotta Lam", photo: photo5, backgroundText: text5, subfield:"")!
                
                let photo6 = UIImage(named: "TM6")!
                let text6 = "TM6"
                let card6 = Card(name: "Leila Janah", photo: photo6, backgroundText: text6, subfield:"")!
                
                cards += [card1, card2, card3, card4, card5, card6];
            
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
        cell.subfieldLabel.text = card.subfield

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
