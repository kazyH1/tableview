//
//  ContractsATableViewCell.swift
//  DanhBa
//
//  Created by HuyNguyen on 27/02/2023.
//

import UIKit

class ContractsATableViewCell: UITableViewCell {

    @IBOutlet weak var btnCall: UIButton!
    @IBOutlet weak var imgContract: UIImageView!
    @IBOutlet weak var lbNameInContractsA: UILabel!
    static let cellIdentifier = "ContractsATableViewCell"
    static let cellNib = UINib(nibName: "ContractsATableViewCell", bundle: Bundle.main)
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
