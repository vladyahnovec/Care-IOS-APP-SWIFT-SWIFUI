//
//  ContentView.swift
//  care
//
//  Created by Круглич Влад on 8.10.24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @StateObject var vm = ViewModel()
    var body: some View {
        VStack {
            if vm.toView == "registerView" {
                RegistrationView(vm: vm)
            }
            else if vm.toView == "homeView" {
                HomeView(vm: vm)
            }
            else if vm.toView == "pillsView" {
                PillsView(vm: vm)
            }
            else if vm.toView == "notesView" {
                NotesView(vm: vm)
            }
            else if vm.toView == "booksView" {
                BooksView(vm: vm)
            }
            else if vm.toView == "sportView" {
                SportView(vm: vm)
            }
            else {}
        }
    }
}

#Preview {
    ContentView()
}
