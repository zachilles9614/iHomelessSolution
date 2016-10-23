//
//  SearchViewController.swift
//  iHomelessSolution
//
//  Created by Zachary Auer on 10/22/16.
//  Copyright © 2016 AuerCorporation. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        parseClientCSV()
        
    }

    
    func parseClientCSV() {
        let path = Bundle.main.path(forResource: "Client", ofType: "csv")!
        
        do {
            let csv = try CSV(contentsOfURL: path)
            let rows = csv.rows
            
            for row in rows {
                let uuid = row["UUID"]
                let firstName = row["First_Name"]
                let middleName = row["Middle_Name"]
                let lastName = row["Last_Name"]
                let ssn = row["SSN"]
                
                let dob = row["DOB"]
                
                let gender = row["Gender"]
              
                let userID = row["UserID"]
                
                
                let person = Client(uuid: (uuid)!, firstName: (firstName)!, middleName: (middleName)!, lastName: (lastName)!, dob: (dob)!, ssn: (ssn)!, gender: (gender)!, userID: (userID)!)
                
            }
            
        } catch {
            
            print(error)
            
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
