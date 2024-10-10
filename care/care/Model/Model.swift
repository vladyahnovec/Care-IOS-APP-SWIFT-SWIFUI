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
    ItemsNav(image: "calendar", color: Color.greenColor, toView: "notesView"),
    ItemsNav(image: "sport", color: Color.redColor, toView: "sportView"),
    ItemsNav(image: "book", color: Color.yellowColor, toView: "booksView"),
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


struct Sport : Hashable, Identifiable, Codable {
    let id = UUID()
    var name : String
    var description : String
    var like: Bool
}

var sportsArray : [Sport] = [
    Sport(name: "Упражения для шеи (комплекс 1)", description: "Рекомендовано пациентам: \n с хроническими болями в шее и шейно-воротниковой зоне, офисным работникам и другим лицам, продолжительно работающим сидя, при остеохондрозе шейного и грудного отделов позвоночника, при грыжах и выпячиваниях межпозвонковых дисков.", like: true),
    Sport(name: "Упражения для шеи (комплекс 2)", description: "Рекомендовано пациентам: \n с хроническими болями в шее и шейно-воротниковой зоне, офисным работникам и другим лицам, продолжительно работающим сидя, при остеохондрозе шейного и грудного отделов позвоночника, при грыжах и выпячиваниях межпозвонковых дисков.", like: true),
    Sport(name: "Упражения для поясницы (комплекс 1)", description: "Рекомендовано пациентам: \nофисным работникам и другим лицам, продолжительно работающим сидя, при грыжах и выпячиваниях межпозвонковых дисков.", like: true),
    Sport(name: "Упражения для поясницы (комплекс 2)", description: "Рекомендовано пациентам: \nофисным работникам и другим лицам, продолжительно работающим сидя, при грыжах и выпячиваниях межпозвонковых дисков.", like: false),
    Sport(name: "Упражения для поясницы (комплекс 3)", description: "Рекомендовано пациентам: \nофисным работникам и другим лицам, продолжительно работающим сидя, при грыжах и выпячиваниях межпозвонковых дисков.", like: false),
    Sport(name: "Упражения для грудного отдела позвоночника (комплекс 1)", description: "Рекомендовано пациентам: \n с хроническими болями в шее и шейно-воротниковой зоне, офисным работникам и другим лицам, продолжительно работающим сидя, при остеохондрозе шейного и грудного отделов позвоночника, при грыжах и выпячиваниях межпозвонковых дисков.", like: false),
    Sport(name: "Упражения при синдроме грушевидной мышцы(комплекс 1)", description: "Рекомендовано пациентам: \n с хроническими болями в шее и шейно-воротниковой зоне, офисным работникам и другим лицам, продолжительно работающим сидя, при остеохондрозе шейного и грудного отделов позвоночника, при грыжах и выпячиваниях межпозвонковых дисков.", like: false)
]



struct Book: Hashable, Identifiable, Codable {
    let id = UUID()
    var name: String
    var author: String
    var description: String
    var like: Bool
}

var booksArray: [Book] = [
    Book(name: "1984", author: "Джордж Оруэлл", description: "Антиутопический роман, действие которого разворачивается в тоталитарном обществе, управляемом Большим Братом.", like: true),
    Book(name: "Убить пересмешника", author: "Харпер Ли", description: "Роман, затрагивающий серьезные вопросы о rape и расовом неравенстве.", like: false),
    Book(name: "Великий Гэтсби", author: "Ф. Скотт Фицджеральд", description: "История о молодом и загадочном миллионере Джее Гэтсби и его одержимости красавицей Дейзи Бьюкенен.", like: true),
    Book(name: "Моби Дик", author: "Герман Мелвилл", description: "Нарратив о приключениях Исмаила на китобойном судне 'Пекод', возглавляемом капитаном Ахава.", like: false),
    Book(name: "Гордость и предубеждение", author: "Джейн Остин", description: "Роман о эмоциональном развитии главной героини Элизабеты Беннет.", like: true)
]
