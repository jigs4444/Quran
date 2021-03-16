//
//  ViewController.swift
//  QuranApp
//
//  Created by Jigar Thakkar on 16/03/21.
//

import UIKit

class ViewController: UIViewController {
    
    var datasource: Quran?
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        datasource = DataManager.shared.readFile()
        self.setup()
    }

    func setup() {
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }

}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datasource?.values.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListCell") as! ListCell
        cell.setup(value: datasource?.values[indexPath.item] ?? "Default")
        return cell
    }
    
}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let value = datasource?.values[indexPath.item]
        Toster.shared.showTost(view: self.view, text: value ?? "")
    }
}
