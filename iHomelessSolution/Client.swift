//
//  Client.swift
//  iHomelessSolution
//
//  Created by Zachary Auer on 10/22/16.
//  Copyright © 2016 AuerCorporation. All rights reserved.
//

import Foundation


class Client {
    
    private var _firstName: String!
    private var _middleName: String!
    private var _lastName: String!
    private var _dob: Date!
    private var _ssn: Int!
    private var _veteranStatus: Int!
    private var _userID: Int!
    
    
    var firstName: String {
        return _firstName
    }
    
    var middleName: String {
        return _middleName
    }
    
    var lastName: String {
        return _lastName
    }
    
    var dob: Date {
        return _dob
    }
    
    var ssn: Int {
        return _ssn
    }
    
    var userID: Int {
        return _userID
    }
    
    init(firstName: String, middleName: String, lastName: String, dob: Date, veteranStatus: Int, ssn: Int, userID: Int) {
        self._firstName = firstName
        self._middleName = middleName
        self._lastName = lastName
        self._veteranStatus = veteranStatus
        self._dob = dob
        self._ssn = ssn
        self._userID = userID
    }
    
    
}
