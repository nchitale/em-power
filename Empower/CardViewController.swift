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
    @IBOutlet weak var backgroundTextView: UITextView!
    
    // Each category has subfields - e.g. Science has subfields Biology, Chemistry, Physics...
    var subfield: String = ""
    
    // This value is passed by "CardTableViewController" in "prepareForSegue(_:sender:)"
    var card: Card?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set up views
        if let card = card {
            navigationItem.title = card.name
            photoImageView.image = card.photo
            backgroundTextView.attributedText = card.backgroundText
            backgroundTextView.editable = false //prevents user from editing description
            subfield = card.subfield
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: Navigation
    
    // Configure view controller before it's presented
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let name = nameTextField.text ?? ""
        
        let photo = photoImageView.image
        let backgroundText = backgroundTextView.attributedText
        
        // Set the card to be passed to CardTableViewController after unwind segue
        card = Card(name: name, photo: photo, backgroundText: backgroundText, subfield: subfield)
    }
}

