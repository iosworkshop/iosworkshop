//
//  HomeVC.swift
//  TakeHomeProject
//
//  Created by Sarthak Srivastava1 on 08/02/24.
//

import UIKit

class HomeVC: UIViewController {
    
    @IBOutlet weak var homeTableview: UITableView?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}
/* extension HomeViewController: UITableViewDataSource{
 func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     return viewModel?.arrayHomeViewData.count ?? 0
 }
 
 func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     guard let cell = homeTableView.dequeueReusableCell(withIdentifier: "HomeTableViewCell") as? HomeTableViewCell else{
         return UITableViewCell()
     }
     cell.setUpHomeViewUI(item: (viewModel?.arrayHomeViewData[indexPath.row])!)
     
    return cell
 }
}*/
extension HomeVC: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
  
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = homeTableview?.dequeueReusableCell(withIdentifier: "TabBarHomeTableViewCell") as?  TabBarHomeTableViewCell else{
            return UITableViewCell()
        }
        return cell
    }
}
