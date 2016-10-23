//
//  ClientCell.swift
//  iHomelessSolution
//
//  Created by Zachary Auer on 10/23/16.
//  Copyright © 2016 AuerCorporation. All rights reserved.
//

import UIKit

class ClientCell: UICollectionViewCell {
    @IBOutlet weak var thumbImg: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    
    var client: Client!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        layer.cornerRadius = 5.0
    }
    
    func configureCell(client: Client) {
        self.client = client
        
        nameLbl.text = self.client.firstName + " " + self.client.lastName
        thumbImg.image = UIImage(named: "folder76x76.png")
    }
    
    
   }
