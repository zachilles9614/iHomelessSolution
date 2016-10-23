//
//  Client.swift
//  iHomelessSolution
//
//  Created by Zachary Auer on 10/22/16.
//  Copyright © 2016 AuerCorporation. All rights reserved.
//

import Foundation


class Client {
    
    private var _UUID: String!
    private var _firstName: String!
    private var _middleName: String!
    private var _lastName: String!
    private var _nameDataQuality: String!
    private var _ssn: String!
    private var _ssnDataQuality: String!
    private var _dob: String!
    private var _dobDataQuality: String!
    private var _amIndAKNative: String!
    private var _asian: String!
    private var _black: String!
    private var _nativeHIOtherPacific: String!
    private var _white: String!
    private var _raceNone: String!
    private var _gender: String!
    private var _veteranStatus: String!
    private var _yearEnteredService: String!
    private var _yearSeparated: String!
    private var _worldWarII: String!
    private var _koreanWar: String!
    private var _vietnamWar: String!
    private var _desertStorm: String!
    private var _afghanistanOEF: String!
    private var _iraqOIF: String!
    private var _iraqOND: String!
    private var _otherTheater: String!
    private var _militaryBranch: String!
    private var _discharge_status: String!
    private var _dateCreated: String!
    private var _dateUpdated: String!
    private var _userID: String!
    
    var uuid: String {
        return _UUID
    }
    
    var firstName: String {
        return _firstName
    }
    
    var middleName: String {
        return _middleName
    }
    
    var lastName: String {
        return _lastName
    }
    
    var dob: String {
        return _dob
    }
    
    var ssn: String {
        return _ssn
    }
    
    var userID: String {
        return _userID
    }
    
    var nameDataQuality: String {
        return _nameDataQuality
    }
    
    var ssnDataQuality: String {
        return _ssnDataQuality
    }
    
    var dobDataQuality: String {
        return _ssnDataQuality
    }
    
    var amIndAKNative: String {
        return _amIndAKNative
    }
    
    var asian: String {
        return _asian
    }
    
    
    var black: String {
        return _black
    }
    
    var nativeHIOtherPacific: String {
        return _nativeHIOtherPacific
    }
    
    var white: String {
        return _white
    }
    
    var raceNone: String {
        return _raceNone
    }
    
    var gender: String {
        return _gender
    }
    
    var veteranStatus: String {
        return _veteranStatus
    }
    
    var yearEnteredService: String {
        return _yearEnteredService
    }
    
    var yearSeparated: String {
        return _yearSeparated
    }
    
    var worldWarII: String {
        return _worldWarII
    }
    
    var koreanWar: String {
        return _koreanWar
    }
    
    var desertStorm: String {
        return _desertStorm
    }
    
    var afghanistanOEF: String {
        return _afghanistanOEF
    }
    
    var iraqOIF: String {
        return _iraqOIF
    }
    
    var iraqOND: String {
        return _iraqOND
    }
    
    var otherTheater: String {
        return _otherTheater
    }
    
    var militaryBranch: String {
        return _militaryBranch
    }
    
    var dischargeStatus: String {
        return _discharge_status
    }
    
    var dateCreated: String {
        return _dateCreated
    }
    
    var dateUpdated: String {
        return _dateUpdated
    }
    
    
    init(uuid: String, firstName: String, middleName: String, lastName: String, nameDataQuality: String, dob: String, ssn: String, ssnDataQuality: String, dobDataQuality: String, amIndAKNative: String, asian: String, black: String, nativeHIOtherPacific: String, white: String, raceNone: String, gender: String, veteranStatus: String, yearEnteredService: String, yearSeparated: String, worldWarII: String, koreanWar: String, desertStorm: String, afghanistanOEF: String, iraqOIF: String, iraqOND: String, otherTheater: String, militaryBranch: String, dischargeStatus: String, dateCreated: String, dateUpdated: String, userID: String ) {
        self._UUID = uuid
        self._firstName = firstName
        self._middleName = middleName
        self._lastName = lastName
        self._nameDataQuality = nameDataQuality
        self._ssn = ssn
        self._ssnDataQuality = ssnDataQuality
        self._dob = dob
        self._dobDataQuality = dobDataQuality
        self._amIndAKNative = amIndAKNative
        self._asian = asian
        self._black = black
        self._nativeHIOtherPacific = nativeHIOtherPacific
        self._white = white
        self._raceNone = raceNone
        self._gender = gender
        self._veteranStatus = veteranStatus
        self._userID = userID
        self._yearEnteredService = yearEnteredService
        self._yearSeparated = yearSeparated
        self._worldWarII = worldWarII
        self._koreanWar = koreanWar
        self._desertStorm = desertStorm
        self._afghanistanOEF = afghanistanOEF
        self._iraqOIF = iraqOIF
        self._iraqOND = iraqOND
        self._otherTheater = otherTheater
        self._militaryBranch = militaryBranch
        self._discharge_status = dischargeStatus
        self._dateCreated = dateCreated
        self._dateUpdated = dateUpdated
        self._userID = userID
    }
    
    
}
