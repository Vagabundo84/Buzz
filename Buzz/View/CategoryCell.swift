//
//  CategoryCell.swift
//  Buzz
//
//  Created by Vagabundo on 6/23/19.
//  Copyright © 2019 Vagabundo. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    func updateViews(category: Category) {
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title 
    }
}
