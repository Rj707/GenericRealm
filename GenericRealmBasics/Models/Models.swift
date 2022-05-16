//
//  Book.swift
//  GenericRealmBasics
//
//  Created by Hafiz Muhammad Saad on 13/05/2022.
//

import Foundation
import RealmSwift

struct Book {
    var volume: Int
    var title: String
}

class RealmBook: Object, Transferrable {
    typealias S = Book
    
    @objc dynamic var volume: Int = 0
    @objc dynamic var title: String = ""
    
    override init() {}
    
    required init(_ entity: S) {
        volume = entity.volume
        title = entity.title
    }
    
    var entity: Book {
        return Book(volume: volume, title: title)
    }
}

struct Expense {
    var id: Int
    var amount: Double
}

class RealmExpense: Object, Transferrable {
    typealias S = Expense
    
    @objc dynamic var id: Int = 0
    @objc dynamic var amount: Double = 0.0
    
    override init() {}
    
    required init(_ entity: S) {
        id = entity.id
        amount = entity.amount
    }
    
    var entity: Expense {
        return Expense(id: id, amount: amount)
    }
}
