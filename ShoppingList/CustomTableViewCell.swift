//
//  CustomTableViewCell.swift
//  ShoppingList
//
//  Created by Basil(300919992) on 2017-02-21.
//  Copyright © 2017 Centennial College. All rights reserved.
//  This is customtableviewcel

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var itemName: UITextField!
    
    @IBOutlet weak var valueLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    var subtasksArray = [String]()
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
//stepper value
    @IBAction func stepperAction(_ sender: UIStepper) {
        //let indexPath = CustomTableViewCel
        valueLabel.text = "\(Int(stepper.value))"
    }
    
    //configure value for setting text and placeholder
    public func configure(text: String?, placeholder: String) {
        itemName.text = text
        itemName.placeholder = placeholder
        
        itemName.accessibilityValue = text
        itemName.accessibilityLabel = placeholder
    }
    
    //tried for implementing didend editing
    func textFieldDidEndEditing(textField: UITextField) {
        
        subtasksArray.append(itemName.text!)
        print(subtasksArray)
    }

}
