//
//  ViewTableViewTableViewController.swift
//  ShoppingList
//
//  Created by Basil on 2017-02-21.
//  Copyright © 2017 Centennial College. All rights reserved.
//

import UIKit

class ViewTableViewTableViewController: UITableViewController {

    @IBOutlet weak var listName: UITextField!
    @IBOutlet weak var itemName: UITextField!
    @IBOutlet weak var stepperValue: UIStepper!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    @IBAction func saveButton(_ sender: Any) {
        
    }

    @IBAction func cancelAction(_ sender: UIButton) {
    
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 3
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 5
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */



}
