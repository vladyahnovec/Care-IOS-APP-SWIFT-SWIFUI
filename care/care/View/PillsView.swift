//
//  PillsView.swift
//  care
//
//  Created by Круглич Влад on 9.10.24.
//

import SwiftUI

struct PillsView: View {
    @ObservedObject var vm: ViewModel
    var body: some View {
        VStack {
            
            HStack {
                Text("Лекарства")
                    .font(.custom("Poppins-Black", size: 25))
                    .foregroundStyle(Color.purpleColor)
                Spacer()
            }
            .frame(height: 70)
            
            FindFieldView(vm: vm)
            
            
            Spacer()
        }
        .frame(width: UIScreen.main.bounds.width - 40)
    }
}

#Preview {
    PillsView(vm: ViewModel())
}
