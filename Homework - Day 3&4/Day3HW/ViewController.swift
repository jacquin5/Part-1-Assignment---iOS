//
//  ViewController.swift
//  Day3HW
//
//  Created by Jacquin Wynn Jr on 2/26/15.
//  Copyright (c) 2015 JMW. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var people = [Person]()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       //Adds title to the Nav Bar
        self.title = "Da Fam"
       
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        
        let jac = Person(firstName: "Jac", lastName: "Wynn")
        jac.height = 73
        let james = Person(firstName: "James", lastName: "Wynn")
        james.height = 64
        let moms = Person(firstName: "Danielle", lastName: "Wynn")
        moms.height = 61
        let pops = Person(firstName: "Sam", lastName: "Wynn")
        pops.height = 73
        self.people.append(jac)
        self.people.append(james)
        self.people.append(moms)
        self.people.append(pops)
        //self.people += []
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.people.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //step1: dequeue a reusable cell
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        
        let person = self.people[indexPath.row]
        cell.textLabel?.text = person.firstName + " " + person.lastName
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        println(indexPath.row)
        
//        let myViewController = UIViewController()
//        myViewController.view.backgroundColor = UIColor.grayColor()
//        
//        self.navigationController?.pushViewController(myViewController, animated: true)
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ShowOrange" {
            println("ShowOrange")
            let destinationVC = segue.destinationViewController as PersonDetailViewController
            
            let indexPath = self.tableView.indexPathForSelectedRow()
            let person = self.people[indexPath!.row]
            
            destinationVC.selectedPerson = person

            
        }
    }

}

