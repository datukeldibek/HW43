//
//  TableViewCell.swift
//  HW43
//
//  Created by Jarae on 7/3/23.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var imageV: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var amountLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imageV.layer.cornerRadius = 16
    }

    public func initUI(image: String, name: String, count: String){
        imageV.image = UIImage(named: image)
        nameLabel.text = name
        amountLabel.text = count
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
