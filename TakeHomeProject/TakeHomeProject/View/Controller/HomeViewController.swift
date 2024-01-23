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
        cell.setUpHomeViewUI(item: (viewModel?.arrayHomeViewData[indexPath.row])!)
        //cell.selectionStyle = .
       return cell
    }
}

extension HomeViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.homeTableView.deselectRow(at: indexPath, animated: true)
       // cell.selectionStyle = .none
        //var a = SPHomeListData.collectionView
        if  viewModel?.arrayHomeViewData[indexPath.row] == .customtableView {
            let customTableVC = self.storyboard?.instantiateViewController(withIdentifier: "CustomTableViewController")
            self.navigationController?.pushViewController(customTableVC!, animated: true)
        } else if viewModel?.arrayHomeViewData[indexPath.row] == .collectionView {
            let customTableVC = self.storyboard?.instantiateViewController(withIdentifier: "CustomCollectionViewController")
            self.navigationController?.pushViewController(customTableVC!, animated: true)
        } else {
            
        }
    }
}
