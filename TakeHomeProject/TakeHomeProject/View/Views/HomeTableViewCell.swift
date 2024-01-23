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
//        self.selectionStyle = .blue
//        self.isHighlighted = false
        // Configure the view for the selected state
    }
    func setUpHomeViewUI (item:SPHomeListData){
        lblName.text = item.title
    }
    
  
    
    override func setHighlighted(_ highlighted: Bool, animated: Bool) {
        let color: UIColor = .clear
        super.setHighlighted(highlighted, animated: animated)
     
    }
}
