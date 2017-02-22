//
//  ViewController.swift
//  ShoppingList
//
//  Name : Basil(300919992) on 2017-02-21.
//  Copyright © 2017 Centennial College. All rights reserved.
//

import UIKit
import FirebaseDatabase

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var listName: UITextField!
   
    @IBOutlet weak var tableView: UITableView!
    var data: [String] = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5"]
 //   let databaseRef = FIRDatabase.database().reference()        // Firebase Database reference
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //returning cell item actions
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "rows", for: indexPath) as! CustomTableViewCell
        cell.configure(text: "", placeholder: "Enter item")
        return cell
    }
    //Number of rows for tableview
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
//saveAction
    @IBAction func saveAction(_ sender: UIButton) {
        let post = ["ItemName":listName.text! as String]
   //     databaseRef.childByAutoId().updateChildValues(post)
        print(tableView.visibleCells.count)
        
    }
    //cancel Action
    @IBAction func cancelAction(_ sender: UIButton) {
        listName.text = ""
        self.tableView.reloadData()
    }
}

