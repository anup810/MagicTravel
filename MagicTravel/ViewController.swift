//
//  ViewController.swift
//  MagicTravel
//
//  Created by Anup Saud on 2025-01-11.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var countriesTableView: UITableView!
    let countries = [
        "Canada",
        "United States",
        "United Kingdom",
        "Australia",
        "Germany",
        "France",
        "Italy",
        "Spain",
        "Japan",
        "India",
        "Brazil",
        "Mexico",
        "South Korea",
        "China",
        "Russia",
        "South Africa",
        "New Zealand",
        "Argentina",
        "Norway",
        "Sweden"
    ]

    
    struct Constants{
        static let cellIdentifier = "MagicCountryCell"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        countriesTableView.register(UITableViewCell.self, forCellReuseIdentifier: "MagicCountryCell")
        
    }


}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableViewCell = tableView.dequeueReusableCell(withIdentifier: Constants.cellIdentifier, for: indexPath)
        var tableViewDefaultContentConfiguration = tableViewCell.defaultContentConfiguration()
        tableViewDefaultContentConfiguration.text = countries[indexPath.row]
        tableViewCell.contentConfiguration = tableViewDefaultContentConfiguration
      
        return tableViewCell
    }
    
    
}

extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

    
}
