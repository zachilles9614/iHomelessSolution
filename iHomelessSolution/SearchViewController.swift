//
//  SearchViewController.swift
//  iHomelessSolution
//
//  Created by Zachary Auer on 10/22/16.
//  Copyright © 2016 AuerCorporation. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UICollectionViewDelegate, UISearchBarDelegate {

    @IBOutlet var searchBar: UISearchBar!
    
    @IBOutlet weak var collection: UICollectionView!
    var client = [Client]()
    var filteredClients = [Client]()
    var inSearchMode = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collection.delegate = self
        collection.dataSource = self
        searchBar.delegate = self
        searchBar.returnKeyType = UIReturnKeyType.done
        
        // Do any additional setup after loading the view.
        parseClientCSV()
        
    }

    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        view.endEditing(true)
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        if searchBar.text == nil || searchBar.text == "" {
            inSearchMode = false
            view.endEditing(true)
            collection.reloadData()
        } else {
            inSearchMode = true
            let lower = searchBar.text!.lowercased()
            filteredClients = client.filter({$0.lastName.range(of: lower) != nil})
            collection.reloadData()
        }
        
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ClientCell", for: indexPath) as? ClientCell {
            
            
            
            if inSearchMode {
               let people = filteredClients[indexPath.row]
                cell.configureCell(client: people)
            } else {
               let people = client[indexPath.row]
                cell.configureCell(client: people)
            }
            
            return cell
            
        } else {
            return UICollectionViewCell()
        }
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        
        if inSearchMode {
            let people = filteredClients[indexPath.row]
            performSegue(withIdentifier: "ClientDetailVC", sender: people)
        } else {
            let people = client[indexPath.row]
             performSegue(withIdentifier: "ClientDetailVC", sender: people)
        }
        
      
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       if segue.identifier == "ClientDetailVC" {
            if let detailsVC = segue.destination as? ClientDetailVC {
                if let people = sender as? Client {
                    detailsVC.client = people

                }
            }
       }
    }
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if inSearchMode {
            return filteredClients.count
        }
        return client.count
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    //func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
    
        //return CGSizeMake(105, 105)
    //}

    
    
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
                
                client.append(person)
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
