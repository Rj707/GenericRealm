//
//  Protocols.swift
//  GenericRealmBasics
//
//  Created by Hafiz Muhammad Saad on 13/05/2022.
//

import Foundation

// Implemented by RealmSwift.Object subclasses

protocol Transferrable {
    associatedtype S // It will be basically our App Object aka Struct
    
    init(_ entity: S)
    var entity: S { get }
}

// protocol to define the operations one can perform on a repository

protocol Repository {
    associatedtype S
    
    func insert(item: S)
    func getAll() -> [S]
}
