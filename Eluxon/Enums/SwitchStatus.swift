//
//  SwitchStatus.swift
//  Eluxon
//
//  Created by Daniel Spalek on 05/08/2022.
//

import Foundation

// This enumeration will help us to monitor the on & off status of the button.
// we will create an enumeration for both cases
enum SwitchStatus: Togglable{
    case on, off
    
    // we can also add functions inside an enumeration
    mutating func toggle() {
        // (we can also use an if statement heere)
        switch self {
        case .on:
            self = .off
        case .off:
            self = .on
        }
        // this mutating function is going to be able to set the value of any instance of SwitchStatus we have.
    }
}
