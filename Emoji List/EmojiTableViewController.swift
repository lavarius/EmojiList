//
//  EmojiTableViewController.swift
//  Emoji List
//
//  Created by Mark Bartolo on 5/28/18.
//  Copyright © 2018 mlavarius. All rights reserved.
//

import UIKit

class EmojiTableViewController: UITableViewController {
    
    var emojis = ["🙂","☹️", "💩", "🏎", "⛪️", "💒", "🕌", "🕍"]
    
    //Run this code when this ViewController shows up for the first time
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    /* //Deleted Here too because not really an issue
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    } */

    // MARK: - Table view data source
    /* //DELETED in tutorial
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    } */
    
    //Needed to go to identity inspector and connect the class of EmojiTableViewController is connected with the story board
    //Tells us how many things are in our Table View
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // return the number of rows OR how ever many is inside the variable array emojis
        return emojis.count
    }

    //What should go inside of each of these Rows in this tableView
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        //From the storyboard, we changed the attribute identifier of "reuseIdentifier" to "myCell" to connect the code and storyboard
        cell.textLabel?.text = emojis[indexPath.row]
        
        //print(indexPath.row)
        // Configure the cell...

        return cell
    }
    
    //new function to tell program what to do when an item is tapped on - didSelectRowAt
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print("Tapped!")
        //Do Segue to Car Emoji
        //sender: nil = don't pass anything through
        
        //get the tapped emoji from array
        let tappedEmoji = emojis[indexPath.row]
        //instead of passing gas tank, we want to pass whatever emoji the User has selected
        performSegue(withIdentifier: "carSegue", sender: tappedEmoji)
    }
    
    //Call Function that is usually called before a Segue happens
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //Get access to next viewcontroller, (as! is an Optional)
        let emojiRaceCarVC = segue.destination as! RaceCarEmojiDefinition
        
        //set emoji variable to "We did it!", changed to sender as! String
        emojiRaceCarVC.emoji = sender as! String
        
    }

    //---------------- Under HERE, unnneeded -------
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
