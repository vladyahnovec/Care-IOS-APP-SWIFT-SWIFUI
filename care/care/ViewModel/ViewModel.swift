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
    
    @Published var toView = ""
    
    @Published var notes = notesArray

}
