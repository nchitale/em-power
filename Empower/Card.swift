//
//  Card.swift
//  Empower
//
//  Created by Nandini  on 7/20/16.
//  Copyright © 2016 Empower. All rights reserved.
//

import UIKit

class Card {
    
    // MARK: Properties
    var name: String
    var photo: UIImage?
    
    // MARK: Initialization
    init?(name: String, photo: UIImage?) {
        self.name = name
        self.photo = photo
        
        //Initialization should fail if there is no name
        if name.isEmpty {
            return nil
        }
    }
    
}