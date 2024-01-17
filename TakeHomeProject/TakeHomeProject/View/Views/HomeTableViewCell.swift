//
//  HomeTableViewCell.swift
//  TableView
//
//  Created by Sarthak Srivastava1 on 07/01/24.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    @IBOutlet weak var lblName : UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setUpHomeViewUI (item:SPHomeListData){
        lblName.text = item.title
    }

}
