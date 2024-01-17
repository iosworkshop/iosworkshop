//
//  HomeTableViewCell.swift
//  TableView
//
//  Created by Sarthak Srivastava1 on 19/12/23.
//

import UIKit



class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblDetails: UILabel!
    @IBOutlet weak var imgIcon: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        imgIcon.layer.cornerRadius = imgIcon.frame.size.height/2
    }
    func setUpUI(item:animalDetails){
        lblName.text = item.name
        lblDetails.text = item.details
        imgIcon.image = item.icon
    }
}
