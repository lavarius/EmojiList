//
//  ViewController.swift
//  Emoji List
//
//  Created by Mark Bartolo on 11/15/17.
//  Copyright © 2017 mlavarius. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableViewForEmoji: UITableView!
    
    //Create an Array
    var emojisArray = ["😀", "☺️", "😘", "🤯", "😍", "😇", "😎", "😡", "😭"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableViewForEmoji.dataSource = self
        tableViewForEmoji.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return 10 rows
        //return counts in the array emojisarray
        return emojisArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //indexPath has information
        //print row
        //print(indexPath.row)
        //each row in the table view is a cell
        let cell = UITableViewCell()
        //This just allows us to put the same text in each row
        //adjusted to show content in each row.
        cell.textLabel?.text = emojisArray[indexPath.row]
        return cell
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

