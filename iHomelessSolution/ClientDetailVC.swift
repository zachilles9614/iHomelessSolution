//
//  ClientDetailVC.swift
//  iHomelessSolution
//
//  Created by Zachary Auer on 10/23/16.
//  Copyright © 2016 AuerCorporation. All rights reserved.
//

import UIKit

class ClientDetailVC: UIViewController {

   
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var uuidLbl: UILabel!
    @IBOutlet weak var ssnLbl: UILabel!
    @IBOutlet weak var dobLbl: UILabel!
    @IBOutlet weak var userIDLbl: UILabel!
    @IBOutlet weak var genderLbl: UILabel!
    
    var client: Client!
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLbl.text = client.lastName + ", " + client.firstName + " " + client.middleName
        print("name Worked \n")
       userIDLbl.text = client.userID
        print("UserID worked \n")
        dobLbl.text = client.dob
        print("DOB Label worked \n")
        ssnLbl.text = client.ssn
        print("SSN Label worked \n")
        uuidLbl.text = client.uuid
        print("UUID Worked \n")
        genderLbl.text = client.gender
        print("GenderLabel worked \n")
        // Do any additional setup after loading the view.
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
