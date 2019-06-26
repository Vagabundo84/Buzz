//
//  File.swift
//  Buzz
//
//  Created by Vagabundo on 6/24/19.
//  Copyright © 2019 Vagabundo. All rights reserved.
//

import Foundation

struct Category {
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}
