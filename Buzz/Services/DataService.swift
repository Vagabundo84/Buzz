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
    
    private let muskarci = [
        Product(title: "NIKE AIR VAPORMAX FLYKNID 3", price: "479,00 KM", imageName: "vapormax.jpg"),
        Product(title: "AIR MAX 720", price: "405,00 KM", imageName: "air-max720.jpg"),
        Product(title: "NIKE AIR MAX 95 PREMIUM", price: "379,00 KM", imageName: "air-max95.jpg"),
        Product(title: "NIKE AIR VAPORMAX FLYKNID 3", price: "479,00 KM", imageName: "nikeair.jpg")
    ]
    private let zene = [
        Product(title: "NIKE AIR MAX 720", price: "405,00 KM", imageName: "zene1.jpg"),
        Product(title: "W AIR MAX 97 PRM", price: "405,00 KM", imageName: "zene2.jpg"),
        Product(title: "W AIR MAX 97", price: "379,00 KM", imageName: "zene3.jpg"),
        Product(title: "WMNS AIR MAX 95", price: "359,00 KM", imageName: "zene4.jpg")
    ]
    private let djeca = [
        Product(title: "NIKE AIR MAX '95 (GS)", price: "235,00 KM", imageName: "djeca1.jpg"),
        Product(title: "NIKE AIR MAX 90 LTR (GS)", price: "225,00 KM", imageName: "djeca2.jpg"),
        Product(title: "NIKE AIR MAX 270", price: "255,00 KM", imageName: "djeca3.jpg"),
        Product(title: "NIKE SHOX R4 (GS)", price: "255,00 KM", imageName: "djeca4.jpg")
    ]
    func getCategories() -> [Category] {
        return categories
    }
    func getProducts(forCategoryTitle title: String) -> [Product] {
        
        switch title {
        case "MUSKARCI":
          return getMuskarci()
        case "ZENE":
            return getZene()
        case "DJECA":
            return getDjeca()
        default:
            return getMuskarci()
        }
    }
    func getMuskarci() -> [Product] {
        return muskarci
    }
    func getZene() -> [Product] {
        return zene
    }
    func getDjeca() -> [Product] {
        return djeca
    }
    
}


