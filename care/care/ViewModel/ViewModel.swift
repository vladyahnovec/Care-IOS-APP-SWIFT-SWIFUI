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
    
    @Published var toView = "notesView"
    
    @Published var notes = notesArray
    var copyNotes = notesArray
    
    @Published var findText = "" {
        didSet {
            filterNotesByFindText()
        }
    }
    
    
    private func filterNotesByFindText() {
        if findText != "" {
            self.notes = self.notes.filter {$0.text.lowercased().contains(findText.lowercased())}
        }
        else {
            self.notes = copyNotes
        }
    }
    
    func addToNotes(text: String) {
        notes.append(Notes(text: text, done: false, createdDate: Date()))
    }

}
