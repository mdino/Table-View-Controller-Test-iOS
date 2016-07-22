//
//  MyTableVC.swift
//  TableViewControllerTest
//
//  Created by Dino Musliu on 19/07/2016.
//  Copyright © 2016 Dino Musliu. All rights reserved.
//

import UIKit

class MyTableVC: UITableViewController {

    var cars = ["BMW", "Ford", "Chevy", "Volvo", "Subaru"]
    override func viewDidLoad() {
        super.viewDidLoad()

            }



    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // return the number of rows in section
        return cars.count
    }

    
    //ReusableCell (tableview -> reusableCell, kad ne zelimo koristiti previse memorije)
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("carCell", forIndexPath: indexPath) //npr neka imamo nekoliko cellija i razlicite layaoute da nebi koristili layaout koji nam ne odgovara u identifier pisemo tocan koji zelimo "reuseIdentifier"

        cell.textLabel?.text = cars[indexPath.row] // defaultni main label, [] -> index arraya, indexPath ->  vraca nam cell u odredenom rowu
        
        cell.detailTextLabel?.text = "I like my: \(cars[indexPath.row])"

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
