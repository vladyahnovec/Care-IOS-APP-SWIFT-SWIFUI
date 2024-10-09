//
//  Model.swift
//  care
//
//  Created by Круглич Влад on 9.10.24.
//

import Foundation
import SwiftUI

struct ItemsNav: Identifiable, Hashable {
    var id = UUID()
    var image: String
    var color: Color
    var toView: String
}

let itemsNav: [ItemsNav] = [
    ItemsNav(image: "pills", color: Color.blueColor, toView: "pillsView"),
    ItemsNav(image: "calendar", color: Color.greenColor, toView: "calendarView"),
    ItemsNav(image: "sport", color: Color.redColor, toView: "sportView"),
    ItemsNav(image: "book", color: Color.yellowColor, toView: "bookView"),
    ItemsNav(image: "robot", color: Color.purpleL, toView: "robotView"),
    ItemsNav(image: "person", color: Color.brownColor.opacity(0.2), toView: "personView")
]
