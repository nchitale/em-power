//
//  NCategory.swift
//  Empower
//
//  Created by Nandini  on 8/9/16.
//  Copyright © 2016 Empower. All rights reserved.
//

import UIKit

class NCategory {
    
    //class name is NCategory since Swift already has a type called Category.
    
    // MARK: Properties
    var name: String
    var photo: UIImage?
    var people: CardTableViewController //list of people in this category
    
    // MARK: Initialization
    init?(name: String, photo: UIImage?, people:CardTableViewController) {
        self.name = name
        self.photo = photo
        self.people = people
        
        //Initialization should fail if there is no name
        if name.isEmpty {
            return nil
        }
    }
    
}

