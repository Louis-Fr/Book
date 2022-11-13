//
//  Livre.swift
//  Livre
//
//  Created by Louis REY on 13/11/2022.
//

import Foundation

class Book {
    var title: String
    var author: String
    var editor: String
    var year: Int
    var numberPages: Int
    
    var loan: Bool
    var nameLoan: String
    
    init(title: String, author: String, editor: String, year: Int, numberPages: Int, loan: Bool, nameLoan: String) {
        self.title = title
        self.author = author
        self.editor = editor
        self.year = year
        self.numberPages = numberPages
        self.loan = loan
        self.nameLoan = nameLoan
    }
    
    func getNameOwner() -> String {
       // return self.nameLoan
        return "The book  " + title + " was borrowed by " + nameLoan
    }
    
    func getInfo() -> String {
        return "The book is \(title) by \(author) the editor is \(editor) sorted in \(year) and contains \(numberPages) pages"
    }
    
    func avaible() -> String {
        if (loan) {
            return "The book " + title + " is not avaible"
        } else {
            return "The book" + title + " is avaible"
        }
    }
    
    func borrow(owner: String) -> String {
        if !loan {
            // Self pour cibler les attributs de la classe
            self.loan = true
            self.nameLoan = owner
            return "The book " + title + " is not avaible and the owner is \(owner)"
        } else {
            return "The book is avaible !"
        }
    }
    
    func returning() -> String {
        if (loan) {
            self.loan = false
            self.nameLoan = "No person"
            return "The book " + title + " is rendering"
        } else {
            return "The book" + title + " is not borrow"
        }
    }
    
   
}

