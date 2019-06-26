//
//  Product.swift
//  Buzz
//
//  Created by Vagabundo on 6/26/19.
//  Copyright © 2019 Vagabundo. All rights reserved.
//

import Foundation

struct Product {
   private(set)  public var title: String
   private(set) public var price: String
   private(set) public var imageName: String
    
    init(title: String, price: String, imageName: String) {
        self.imageName = imageName
        self.title = title
        self.price = price
    }
}
