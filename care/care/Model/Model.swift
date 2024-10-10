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
    Notes(text: "Задача 2jasdfjkasdfjaksdnfjksandfjn ajsdfnjknasdkfnkjasdnf ansdjfnakdsjnfasfnsjakdnfj nasjkdfnkjsandfknsakdfjnaskdfakjnsdjkfn kajnsnasjkndfk janksfdnkna skj", done: false, createdDate: Date()),
    Notes(text: "Задача 3", done: false, createdDate: Date()),
    Notes(text: "Задача 4", done: true, createdDate: Date()),
]


struct Sports : Hashable, Identifiable, Codable {
    let id = UUID()
    var name : String
    var description : String
    var like: Bool
}

var sportsArray : [Sports] = [
    Sports(name: "Упражения для шеи (комплекс 1)", description: "Рекомендовано пациентам: \n с хроническими болями в шее и шейно-воротниковой зоне, офисным работникам и другим лицам, продолжительно работающим сидя, при остеохондрозе шейного и грудного отделов позвоночника, при грыжах и выпячиваниях межпозвонковых дисков.", like: true),
    Sports(name: "Упражения для шеи (комплекс 2)", description: "Рекомендовано пациентам: \n с хроническими болями в шее и шейно-воротниковой зоне, офисным работникам и другим лицам, продолжительно работающим сидя, при остеохондрозе шейного и грудного отделов позвоночника, при грыжах и выпячиваниях межпозвонковых дисков.", like: true),
    Sports(name: "Упражения для поясницы (комплекс 1)", description: "Рекомендовано пациентам: \nофисным работникам и другим лицам, продолжительно работающим сидя, при грыжах и выпячиваниях межпозвонковых дисков.", like: true),
    Sports(name: "Упражения для поясницы (комплекс 2)", description: "Рекомендовано пациентам: \nофисным работникам и другим лицам, продолжительно работающим сидя, при грыжах и выпячиваниях межпозвонковых дисков.", like: false),
    Sports(name: "Упражения для поясницы (комплекс 3)", description: "Рекомендовано пациентам: \nофисным работникам и другим лицам, продолжительно работающим сидя, при грыжах и выпячиваниях межпозвонковых дисков.", like: false),
    Sports(name: "Упражения для грудного отдела позвоночника (комплекс 1)", description: "Рекомендовано пациентам: \n с хроническими болями в шее и шейно-воротниковой зоне, офисным работникам и другим лицам, продолжительно работающим сидя, при остеохондрозе шейного и грудного отделов позвоночника, при грыжах и выпячиваниях межпозвонковых дисков.", like: false),
    Sports(name: "Упражения при синдроме грушевидной мышцы(комплекс 1)", description: "Рекомендовано пациентам: \n с хроническими болями в шее и шейно-воротниковой зоне, офисным работникам и другим лицам, продолжительно работающим сидя, при остеохондрозе шейного и грудного отделов позвоночника, при грыжах и выпячиваниях межпозвонковых дисков.", like: false)
]
