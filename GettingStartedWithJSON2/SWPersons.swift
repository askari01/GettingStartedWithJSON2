//
//  SWPersons.swift
//  GettingStartedWithJSON2
//
//  Created by Syed Askari on 15/02/2016.
//  Copyright © 2016 Syed Askari. All rights reserved.
//

import Foundation

class SWPersons {
    private var _name: String!
    private var _hairColour: String!
    private var _birthYear: String!
    private var _height: String!
    
    init(name: String, hairColour: String, birthYear: String, height: String) {
        _name = name
        _hairColour = hairColour
        _birthYear = birthYear
        _height = height
    }
    
    var name: String {
        return _name
    }
    
    var hairColour: String {
        return _hairColour
    }
    
    var birthYear: String {
        return _birthYear
    }
    
    var height: String {
        return _height
    }
}
