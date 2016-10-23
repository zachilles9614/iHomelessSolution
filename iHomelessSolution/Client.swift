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
        if _UUID == nil {
            _UUID == ""
        }
        return _UUID
    }
    
    var firstName: String {
        if _firstName == nil {
            _firstName == ""
        }
        return _firstName
    }
    
    var middleName: String {
        if _middleName == nil {
            _middleName == ""
        }
        return _middleName
    }
    
    var lastName: String {
        if _lastName == nil {
            _lastName == ""
        }
        return _lastName
    }
    
    var dob: String {
        if _dob == nil {
            _dob == ""
        }
        return _dob
    }
    
    var ssn: String {
        if _ssn == nil {
            _ssn == ""
        }
        return _ssn
    }
    
    var userID: String {
        if _userID == nil {
            _userID == ""
        }
        return _userID
    }
    
    var nameDataQuality: String {
        if _nameDataQuality == nil {
            _nameDataQuality == ""
        }
        return _nameDataQuality
    }
    
    var ssnDataQuality: String {
        if _ssnDataQuality == nil {
            _ssnDataQuality == ""
        }
        return _ssnDataQuality
    }
    
    var dobDataQuality: String {
        if _dobDataQuality == nil {
            _dobDataQuality == ""
        }
        return _dobDataQuality
    }
    
    var amIndAKNative: String {
        if _amIndAKNative == nil {
            _amIndAKNative == ""
        }
        return _amIndAKNative
    }
    
    var asian: String {
        if _asian == nil {
            _asian == ""
        }
        return _asian
    }
    
    
    var black: String {
        if _black == nil {
            _black == ""
        }
        return _black
    }
    
    var nativeHIOtherPacific: String {
        if _nativeHIOtherPacific == nil {
            _nativeHIOtherPacific == ""
        }
        return _nativeHIOtherPacific
    }
    
    var white: String {
        if _white == nil {
            _white == ""
        }
        return _white
    }
    
    var raceNone: String {
        if _raceNone == nil {
            _raceNone == ""
        }
        return _raceNone
    }
    
    var gender: String {
        if _gender == nil {
            _gender == ""
        }
        return _gender
    }
    
    var veteranStatus: String {
        if _veteranStatus == nil {
            _veteranStatus == ""
        }
        return _veteranStatus
    }
    
    var yearEnteredService: String {
        if _yearEnteredService == nil {
            _yearEnteredService == ""
        }
        return _yearEnteredService
    }
    
    var yearSeparated: String {
        if _yearSeparated == nil {
            _yearSeparated == ""
        }
        return _yearSeparated
    }
    
    var worldWarII: String {
        if _worldWarII == nil {
            _worldWarII == ""
        }
        return _worldWarII
    }
    
    var koreanWar: String {
        if _koreanWar == nil {
            _koreanWar == ""
        }
        return _koreanWar
    }
    
    var desertStorm: String {
        if _desertStorm == nil {
            _desertStorm == ""
        }
        return _desertStorm
    }
    
    var afghanistanOEF: String {
        if _afghanistanOEF == nil {
            _afghanistanOEF == ""
        }
        return _afghanistanOEF
    }
    
    var iraqOIF: String {
        if _iraqOIF == nil {
            _iraqOIF == ""
        }
        return _iraqOIF
    }
    
    var iraqOND: String {
        if _iraqOND == nil {
            _iraqOND == ""
        }
        return _iraqOND
    }
    
    var otherTheater: String {
        if _otherTheater == nil {
            _otherTheater == ""
        }
        return _otherTheater
    }
    
    var militaryBranch: String {
        if _militaryBranch == nil {
            _militaryBranch == ""
        }
        return _militaryBranch
    }
    
    var dischargeStatus: String {
        if _discharge_status == nil {
            _discharge_status == ""
        }
        return _discharge_status
    }
    
    var dateCreated: String {
        if _dateCreated == nil {
            _dateCreated == ""
        }
        return _dateCreated
    }
    
    var dateUpdated: String {
        if _dateUpdated == nil {
            _dateUpdated == ""
        }
        return _dateUpdated
    }
    
    
    init(uuid: String, firstName: String, middleName: String, lastName: String, dob: String, ssn: String, gender: String, userID: String ) {
        self._UUID = uuid
        self._firstName = firstName
        self._middleName = middleName
        self._lastName = lastName
        self._ssn = ssn
        self._dob = dob
        self._gender = gender
        self._userID = userID
        self._userID = userID
    }
    
    
}
