//
//  ViewController.swift
//  TableView
//
//  Created by Sarthak Srivastava1 on 19/12/23.
//

import UIKit

class CustomTableViewController: UIViewController {
    
    @IBOutlet weak var tableView:UITableView!
    var viewModel: AnimalsViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        setUpTableView()
        viewModel = AnimalsViewModel()
        title = "Animals List"
    }

    func setUpTableView(){
        tableView.register(UINib(nibName: "CustomTableViewCell", bundle: nil),forCellReuseIdentifier: "CustomTableViewCell")
    }

}

extension CustomTableViewController :UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel?.arrayOfAnimals.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell") as? CustomTableViewCell else{
            return UITableViewCell()
        }
        cell.setUpUI(item: viewModel?.arrayOfAnimals[indexPath.row] ?? animalDetails())
        return cell
    }
}
