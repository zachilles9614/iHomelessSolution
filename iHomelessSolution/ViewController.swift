//
//  ViewController.swift
//  iHomelessSolution
//
//  Created by Zachary Auer on 10/21/16.
//  Copyright © 2016 AuerCorporation. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//
        parseClientCSV()
    }
    
    func parseClientCSV() {
        let path = Bundle.main.path(forResource: "Client", ofType: "csv")!
        
        do {
            let csv = try CSV(contentsOfURL: path)
            var rows = csv.rows
            
            for row in rows {
                let uuid = row["uuid"]
                let firstName = row["First_Name"]
                let middleName = row["Middle_Name"]
                let lastName = row["Last_Name"]
                let nameDataQuality = row["Name_Data_Quality"]
                let ssn = row["SSN"]
                let ssnDataQuality = row["SSNDataQuality"]
                let dob = row["DOB"]
                let dobDataQuality = row["DOBDataQuality"]
                let amIndAKNative = row["AmIndAKNative"]
                let asian = row["asian"]
                let black = row["Black"]
                let nativeHIOtherPacific = row["NativeHIOtherPacific"]
                let white = row["White"]
                let raceNone = row["RaceNone"]
                let gender = row["Gender"]
                let otherGender = row["OtherGender"]
                let veteranStatus = row["VeteranStatus"]
                let yearEnteredService = row["YearEnteredService"]
                let yearSeparated = row["YearSeparated"]
                let worldWarII = row["WorldWarII"]
                let koreanWar = row["KoreanWar"]
                let vietnamWar = row["VietnameWar"]
                let desertStorm = row["DesertStorm"]
                let afghanistanOEF = row["AfghanistanOEF"]
                let iraqOIF = row["IraqOIF"]
                let iraqOND = row["IraqOND"]
                let otherTheaters = row["OtherTheaters"]
                let militaryBranch = row["MilitaryBranch"]
                let dischargeStatus = row["Discharge_Status"]
                let dateCreated = row["Date_Created"]
                let dateUpdated = row["DateUpdated"]
                let userID = row["UserID"]
                
                
                let person = Client(uuid: uuid!, firstName: firstName!, middleName: middleName!, lastName: lastName!, nameDataQuality: nameDataQuality!, dob: dob!, ssn: ssn!, ssnDataQuality: ssnDataQuality!, dobDataQuality: dobDataQuality!, amIndAKNative: amIndAKNative!, asian: asian!, black: black!, nativeHIOtherPacific: nativeHIOtherPacific!, white: white!, raceNone: raceNone!, gender: gender!, veteranStatus: veteranStatus!, yearEnteredService: yearEnteredService!, yearSeparated: yearSeparated!, worldWarII: worldWarII!, koreanWar: koreanWar! , desertStorm: desertStorm!, afghanistanOEF: afghanistanOEF!, iraqOIF: iraqOIF!, iraqOND: iraqOND!, otherTheater: otherTheaters!, militaryBranch: militaryBranch!, dischargeStatus: dischargeStatus!, dateCreated: dateCreated!, dateUpdated: dateUpdated!, userID: userID!)
            }
            
        } catch {
            
            print(error)
        
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

