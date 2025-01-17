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

    var continentCountry: [String: String] = [
        "Canada": "North America",
        "United States": "North America",
        "United Kingdom": "Europe",
        "Australia": "Australia",
        "Germany": "Europe",
        "France": "Europe",
        "Italy": "Europe",
        "Spain": "Europe",
        "Japan": "Asia",
        "India": "Asia",
        "Brazil": "South America",
        "Mexico": "North America",
        "South Korea": "Asia",
        "China": "Asia",
        "Russia": "Europe/Asia",
        "South Africa": "Africa",
        "New Zealand": "Australia",
        "Argentina": "South America",
        "Norway": "Europe",
        "Sweden": "Europe"
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
        let countryName = countries[indexPath.row]
        tableViewDefaultContentConfiguration.text = countryName
        tableViewDefaultContentConfiguration.secondaryText = continentCountry[countryName] ?? ""
        tableViewCell.contentConfiguration = tableViewDefaultContentConfiguration
      
        return tableViewCell
    }
    
    
}

extension ViewController: UITableViewDelegate{

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("User Tapped on the cell at\(indexPath)")
        
        let detailViewController = UIViewController()
        detailViewController.view.backgroundColor = .gray
        detailViewController.modalPresentationStyle = .automatic
//        present(detailViewController, animated: true)
        navigationController?.pushViewController(detailViewController, animated: true)
    }
    
}
