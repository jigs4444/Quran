//
//  ListCell.swift
//  QuranApp
//
//  Created by Jigar Thakkar on 16/03/21.
//

import UIKit

class ListCell: UITableViewCell {

    @IBOutlet weak var valueLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setup(value: String) {
        self.valueLabel.text = value.getQuranText
    }

}


