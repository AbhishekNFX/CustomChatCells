//
//  SendMsgTableCell.swift
//  ChatBot
//
//  Created by Abhishek on 29/05/17.
//  Copyright © 2017 Abhishek. All rights reserved.
//

import UIKit

class SendMsgTableCell: UITableViewCell {

    @IBOutlet weak var txtLabel: UILabel!
    @IBOutlet weak var backView: UIView!
    
    let gradientColor = GradientColor()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func draw(_ rect: CGRect) {
        self.setUpCellUI()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setUpCellUI() {
    
        let bgLayer = gradientColor.gradientLayer
        bgLayer.frame = backView.bounds
        
        backView.layer.insertSublayer(bgLayer, at: 0)
        backView.setRoundedConrners(corners: [.bottomLeft, .topLeft, .topRight], radius: 15)
        backView.layer.masksToBounds = true
    }

}
