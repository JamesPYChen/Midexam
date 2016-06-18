//
//  SpecialTableViewCell.swift
//  MovieExam
//
//  Created by jamespoyu on 2016/6/17.
//  Copyright © 2016年 AlphaCamp. All rights reserved.
//

import UIKit

class SpecialTableViewCell: UITableViewCell {
    @IBOutlet weak var CellSideLabel: UILabel!

    @IBOutlet weak var CellLabel: UILabel!
    @IBOutlet weak var CellImageView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
