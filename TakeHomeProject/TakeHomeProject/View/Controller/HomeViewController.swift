//
//  HomeViewController.swift
//  TableView
//
//  Created by Sarthak Srivastava1 on 07/01/24.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var homeTableView: UITableView!
    var viewModel : HomeViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = HomeViewModel()
        registerTableViewCell()
        title = "Practise List"
    }
    func registerTableViewCell(){
        homeTableView.register(UINib(nibName: "HomeTableViewCell", bundle: nil), forCellReuseIdentifier: "HomeTableViewCell")
    }
    

    
}

extension HomeViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel?.arrayHomeViewData.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = homeTableView.dequeueReusableCell(withIdentifier: "HomeTableViewCell") as? HomeTableViewCell else{
            return UITableViewCell()
        }
        
        let celldata = viewModel?.arrayHomeViewData[indexPath.row]
        cell.setUpHomeViewUI(item: celldata!)
        
       return cell
    }
    
    
}

extension HomeViewController: UITableViewDelegate{
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let customTableVC = self.storyboard?.instantiateViewController(withIdentifier: "CustomTableViewController")
//        self.navigationController?.pushViewController(customTableVC!, animated: true)
//
//    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let customTableVC = self.storyboard?.instantiateViewController(withIdentifier: "CustomCollectionViewController")
        self.navigationController?.pushViewController(customTableVC!, animated: true)
        
    }
}
