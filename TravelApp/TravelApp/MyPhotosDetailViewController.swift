//
//  MyPhotosDetailViewController.swift
//  TravelApp
//
//  Created by Sumner Van Schoyck on 3/18/16.
//  Copyright © 2016 Team Taylor Swift. All rights reserved.
//

import UIKit

class MyPhotosDetailViewController: UIViewController {

    var postList = [MainPost]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func goBack(sender: UIBarButtonItem) {
        navigationController!.popViewControllerAnimated(true)
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {

        //let numberOfSections  = dataViewController.sections?.count
        //return numberOfSections!

        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        let numberOfRowsInSection = postList.count
        return numberOfRowsInSection
        //return 3
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("myPhotoCell", forIndexPath: indexPath) as! MyPhotosTableViewCell
        let date = postList[indexPath.row].postDate
        let photo = postList[indexPath.row].placePhoto
        if photo != nil {
            cell.placePhoto.image = UIImage(data: (photo)! as NSData)
        }
        else {
            cell.placePhoto.image = nil
        }
    
        cell.postDate.text = date
    
        return cell
    }

    func tableView(tableView: UITableView!, canEditRowAtIndexPath indexPath: NSIndexPath!) -> Bool {
        return false
    }
    
    /*func tableView(tableView: UITableView!, commitEditingStyle editingStyle:   UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath!) {
        if (editingStyle == UITableViewCellEditingStyle.Delete) {
        let record = dataViewController.objectAtIndexPath(indexPath) as! Place
        context.deleteObject(record)
        do {
        try context.save()
        } catch _ {
        }
        
        }
    }*/

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
