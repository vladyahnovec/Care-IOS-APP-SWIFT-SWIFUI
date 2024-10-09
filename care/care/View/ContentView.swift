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
            RegistrationView(vm: vm)
        }
    }
}

#Preview {
    ContentView()
}
