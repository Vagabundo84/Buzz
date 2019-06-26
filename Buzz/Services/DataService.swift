//
//  DataService.swift
//  Buzz
//
//  Created by Vagabundo on 6/24/19.
//  Copyright © 2019 Vagabundo. All rights reserved.
//

import Foundation

class DataService {
    
    static let instance = DataService() //created a singleton - only one instance of a class
    private let categories = [
    Category(title: "MUSKARCI", imageName: "muskarci.png"),
    Category(title: "ZENE", imageName: "zene.png"),
    Category(title: "DJECA", imageName: "djeca.png")
    ]
    
    func getCategories() -> [Category] {
        return categories
    }
}


