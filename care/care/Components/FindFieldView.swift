//
//  FindFieldView.swift
//  care
//
//  Created by Круглич Влад on 10.10.24.
//

import SwiftUI

struct FindFieldView: View {
    @ObservedObject var vm: ViewModel
    var body: some View {
        ZStack {
            ZStack {
                HStack {
                    Text(vm.findText == "" ? "Поиск" : "")
                        .foregroundStyle(.white)
                        .padding(.leading, 10)
                        .font(.custom("Poppins-Thin", size: 20))
                    Spacer()
                }
                TextField("", text: $vm.findText)
                    .foregroundColor(.white)
                    .font(.custom("Poppins-Medium", size: 20))
                    .padding(.leading, 12)
            }
        }
        .frame(width: 250, height: 40)
        .background(Color.purpleColor)
        .cornerRadius(10)
    }
}

#Preview {
    FindFieldView(vm: ViewModel())
}
