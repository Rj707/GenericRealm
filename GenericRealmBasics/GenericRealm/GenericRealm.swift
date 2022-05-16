//
//  GenericRealm.swift
//  GenericRealmBasics
//
//  Created by Hafiz Muhammad Saad on 13/05/2022.
//

import Foundation
import RealmSwift

// A RealmRepository that implements the Repository protocol on top of Realm

class RealmRepository<T>: Repository where T: Transferrable, T: Object {
    
    typealias RealmEntityType = T
    
    private let realm = try! Realm()
    
    internal func insert(item: T.S) {
        try! realm.write {
            realm.add(RealmEntityType.init(item))
        }
    }
    
    internal func getAll() -> [T.S] {
        return realm.objects(T.self).compactMap { $0.entity }
    }
}
