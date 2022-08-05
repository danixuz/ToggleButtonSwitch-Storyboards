//
//  Togglable.swift
//  Eluxon
//
//  Created by Daniel Spalek on 05/08/2022.
//
// this is another naming convention for protocols (like "delegate"), if this protocol only handles one behaviour, we can just name it togglable, and when we conform to the protocol we are basically making something togglable.

import Foundation

protocol Togglable {
    
    mutating func toggle()
    // whatever variable we call toggle() on, we are going to change it's value. that is why it's mutating.
}
