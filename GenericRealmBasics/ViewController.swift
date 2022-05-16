//
//  ViewController.swift
//  GenericRealmBasics
//
//  Created by Hafiz Muhammad Saad on 13/05/2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let expenseRepository = RealmRepository<RealmExpense>()
        expenseRepository.insert(item: Expense.init(id: 1, amount: 40.0))
        let expenses = expenseRepository.getAll()
        print(expenses)
        
        let bookRepository = RealmRepository<RealmBook>()
        bookRepository.insert(item: Book.init(volume: 1, title: "The Sun"))
        let books  =  bookRepository.getAll()
        print(books)
    }


}

