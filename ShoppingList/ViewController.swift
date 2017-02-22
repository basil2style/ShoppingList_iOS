//
//  ViewController.swift
//  ShoppingList
//
//  Created by Basil(300919992) on 2017-02-21.
//  Copyright © 2017 Centennial College. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var listName: UITextField!
   
    @IBOutlet weak var tableView: UITableView!
    var data: [String] = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "rows", for: indexPath) as! CustomTableViewCell
        
        //cell.itemName.text = data[indexPath.row]
        //cell.editButton?.tag = indexPath.row
        cell.configure(text: "", placeholder: "Enter item")
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        //swipe to delete functionality
        if editingStyle == .delete{
            self.data.remove(at: indexPath.row)
            self.tableView.reloadData()
        }
    }

    @IBAction func saveAction(_ sender: UIButton) {
        
        print(tableView.visibleCells.count)
        
    }
    @IBAction func cancelAction(_ sender: UIButton) {
        listName.text = ""
        self.tableView.reloadData()
    }
}

