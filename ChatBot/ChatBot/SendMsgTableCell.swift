//
//  SendMsgTableCell.swift
//  ChatBot
//
//  Created by Abhishek on 29/05/17.
//  Copyright © 2017 Abhishek. All rights reserved.
//

import UIKit

class SendMsgTableCell: BotCell {

    @IBOutlet weak var txtLabel: UILabel!
    @IBOutlet weak var backView: UIView!
    
    let topColor = UIColor(red: 252.0/255, green: 120.0/255, blue: 128.0/255, alpha: 1.0)
    let bottomColor = UIColor(red: 254.0/255, green: 81.0/255, blue: 167.0/255, alpha: 1.0)
    
//    let gradientColor = GradientColor() way 1
    var gradientColor: GradientColor?  // way 2
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        gradientColor = GradientColor(topColor: topColor, bottomColor: bottomColor)
    }
    
    override func draw(_ rect: CGRect) {
        self.setUpCellUI()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override func configure(cellData: Any?) {
        guard let celldata = cellData as? CellModel else { return }
        txtLabel.text = celldata.text
    }
    
    func setUpCellUI() {
    
        let bgLayer = gradientColor?.gradientLayer
        bgLayer?.frame = backView.bounds
        
        backView.layer.insertSublayer(bgLayer!, at: 0)
        backView.setRoundedConrners(corners: [.bottomLeft, .topLeft, .topRight], radius: 15)
        backView.layer.masksToBounds = true
    }

}
