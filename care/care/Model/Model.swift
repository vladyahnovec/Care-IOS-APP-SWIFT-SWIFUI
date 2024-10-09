//
//  Model.swift
//  care
//
//  Created by Круглич Влад on 9.10.24.
//

import Foundation
import SwiftUI

struct ItemsNav: Identifiable, Hashable {
    let id = UUID()
    var image: String
    var color: Color
    var toView: String
}

var itemsNav: [ItemsNav] = [
    ItemsNav(image: "pills", color: Color.blueColor, toView: "pillsView"),
    ItemsNav(image: "calendar", color: Color.greenColor, toView: "calendarView"),
    ItemsNav(image: "sport", color: Color.redColor, toView: "sportView"),
    ItemsNav(image: "book", color: Color.yellowColor, toView: "bookView"),
    ItemsNav(image: "robot", color: Color.purpleL, toView: "robotView"),
    ItemsNav(image: "person", color: Color.brownColor.opacity(0.2), toView: "personView")
]


struct Notes : Hashable, Identifiable, Codable {
    let id = UUID()
    var text: String
    var done: Bool
    var createdDate: Date
    
    
}

var notesArray: [Notes] = [
    Notes(text: "Задача 1", done: true, createdDate: Date()),
    Notes(text: "Задача 2", done: false, createdDate: Date()),
    Notes(text: "Задача 3", done: false, createdDate: Date()),
    Notes(text: "Задача 4", done: true, createdDate: Date()),
]
