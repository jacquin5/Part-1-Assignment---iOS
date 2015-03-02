//
//  PersonDetailViewController.swift
//  Day3HW
//
//  Created by Jacquin Wynn Jr on 2/26/15.
//  Copyright (c) 2015 JMW. All rights reserved.
//

import UIKit

class PersonDetailViewController: UIViewController {

    
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    
    
    var selectedPerson = Person(firstName: "Dummy", lastName: "Dummy")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = self.selectedPerson.firstName

        self.firstNameLabel.text = selectedPerson.firstName
        self.lastNameLabel.text = selectedPerson.lastName
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
