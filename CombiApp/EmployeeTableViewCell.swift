//
//  EmployeeTableViewCell.swift
//  CombiApp
//
//  Created by Marcell Fulop on 4/29/25.
//

import UIKit

class EmployeeTableViewCell: UITableViewCell {

    @IBOutlet weak var fullNameLabel: UILabel!
    
    @IBOutlet weak var titleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
