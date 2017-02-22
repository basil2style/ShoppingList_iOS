//
//  CustomTableViewCell.swift
//  ShoppingList
//
//  Created by Basil on 2017-02-21.
//  Copyright © 2017 Centennial College. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var itemName: UITextField!
    
    @IBOutlet weak var valueLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func stepperAction(_ sender: UIStepper) {
        valueLabel.text = "\(Int(stepper.value))"
    }
    
    
    public func configure(text: String?, placeholder: String) {
        itemName.text = text
        itemName.placeholder = placeholder
        
        itemName.accessibilityValue = text
        itemName.accessibilityLabel = placeholder
    }
    
    

}
