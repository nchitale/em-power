//
//  CardViewController.swift
//  Empower
//
//  Created by Nandini  on 7/20/16.
//  Copyright © 2016 Empower. All rights reserved.
//

import UIKit

class CardViewController: UIViewController {
    
    // MARK: Properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var photoImageView: UIImageView!
    
    // This value is passed by "CardTableViewController" in "prepareForSegue(_:sender:)"
    var card: Card?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set up views
        if let card = card {
            navigationItem.title = card.name
            //nameTextField.text = card.name // this line causes crash
            photoImageView.image = card.photo
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: Navigation
    
    // This method lets you configure a view controller before it's presented
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let name = nameTextField.text ?? ""
        let photo = photoImageView.image
        
        // Set the card to be passed to CardTableViewController after unwind segue
        card = Card(name: name, photo: photo)
    }

    // MARK: Actions
    @IBAction func goToCard(sender: UITapGestureRecognizer) {
        //TODO: put transition to this card
    }

    //@IBAction func button1(sender: UIButton) {
        //label1.text = "Default" //This changes the label to say "Default" - not what we want
    //}
}

