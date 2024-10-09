//
//  NavigationPanel.swift
//  care
//
//  Created by Круглич Влад on 9.10.24.
//

import SwiftUI

struct NavigationPanel: View {
    @ObservedObject var vm: ViewModel
    var body: some View {
        LazyVGrid(columns: [GridItem(.fixed(150), spacing: 50), GridItem(.fixed(150))], content: {
            ForEach(itemsNav, id: \.self) {i in
                Button(action: {
                    vm.toView = i.toView
                }) {
                    ZStack {
                        Image(i.image)
                    }
                    .frame(width: 150, height: 108)
                    .background(i.color)
                    .cornerRadius(20)
                }
            }
        })
    }
}

#Preview {
    NavigationPanel(vm: ViewModel())
}
