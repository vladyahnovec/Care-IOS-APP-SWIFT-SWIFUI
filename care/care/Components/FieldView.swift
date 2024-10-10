//
//  FieldView.swift
//  care
//
//  Created by Круглич Влад on 8.10.24.
//

import SwiftUI

struct FieldView: View {
    @ObservedObject var vm: ViewModel
    @State var textField = ""
    @Binding var textVM: String
    var body: some View {
        // TODO: Шаблон поля ввода ФИО
        ZStack {
            HStack() {}
                .frame(width: 350, height: 70)
                .background(Color.purpleColor)
                .cornerRadius(15)
            HStack(spacing: 0) {
                Text(textVM == "" ? textField : textVM)
                    .foregroundStyle(.white)
                    .font(.custom("Poppins-Thin", size: 22))
                Spacer()
            }
            .padding(.horizontal, 20)
            TextField("", text: $textVM)
                .font(.custom("Poppins-Thin", size: 22))
                .foregroundColor(.white)
                .padding(.horizontal, 20)
        }
        .shadow(color: Color.purpleColor, radius: 14, x: 10, y: 4)
    }
}
