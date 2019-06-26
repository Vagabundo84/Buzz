//
//  CategriesVC.swift
//  Buzz
//
//  Created by Vagabundo on 6/23/19.
//  Copyright © 2019 Vagabundo. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBAction func buzzBtn(_ sender: Any) {
        UIApplication.shared.open(URL(string:"https://www.buzzsneakers.com")! as URL, options: [:], completionHandler: nil)    }
    
    @IBAction func youtubeBtn(_ sender: Any) {
        UIApplication.shared.open(URL(string:"https://www.youtube.com/channel/UCVO8ALBDUlE7uTJVfrjat5w/videos")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func instagramBtn(_ sender: Any) {
        UIApplication.shared.open(URL(string:"https://www.instagram.com/buzzsneakerstation/")! as URL, options: [:], completionHandler: nil)    }
    
    @IBAction func fbBtn(_ sender: Any) {
        UIApplication.shared.open(URL(string:"https://www.facebook.com/buzzbih/?ref=br_rs")! as URL, options: [:], completionHandler: nil)
        
    }
    @IBOutlet weak var categoryTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTable.dataSource = self
        categoryTable.delegate = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
            let category = DataService.instance.getCategories()[indexPath.row]
            cell.updateViews(category: category)
            return cell
        } else {
            return CategoryCell()
        }
}
    
}

