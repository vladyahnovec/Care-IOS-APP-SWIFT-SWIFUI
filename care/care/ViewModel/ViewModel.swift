//
//  ViewModel.swift
//  care
//
//  Created by Круглич Влад on 8.10.24.
//

import Foundation

class ViewModel: ObservableObject {
    @Published var surname = ""
    @Published var name = ""
    @Published var patronymic = ""
    
    @Published var voice = "Женский"
    
    @Published var toView = "registerView"
    
    @Published var notes = notesArray
    var copyNotes = notesArray
    
    @Published var sports = sportsArray
    var copySports = sportsArray
    
    @Published var books = booksArray
    var copyBooks = booksArray
    
    @Published var findText = "" {
        didSet {
            filterByFindText(books: nil, notes: self.notes)
        }
    }
    
    
    private func filterByFindText(books: [Book]?, notes: [Notes]?) {
        if findText != "" {
            if toView == "notesView" {
                self.notes = self.copyNotes.filter {$0.text.lowercased().contains(findText.lowercased())}
            }
            else if toView == "booksView" {
                self.books = self.copyBooks.filter {$0.name.lowercased().contains(findText.lowercased()) || $0.author.lowercased().contains(findText.lowercased())}
            }
        }
        else {
            if toView == "notesView" {
                self.notes = copyNotes
            }
            else if toView == "booksView" {
                self.books = copyBooks
            }
        }
    }
    
    func deleteNote(index: Int) {
        self.notes.remove(at: index)
    }
    
    func addToNotes(text: String) {
        notes.append(Notes(text: text, done: false, createdDate: Date()))
    }

}
