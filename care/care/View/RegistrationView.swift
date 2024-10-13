//
//  RegistrationView.swift
//  care
//
//  Created by Круглич Влад on 8.10.24.
//

import SwiftUI

struct RegistrationView: View {
    @ObservedObject var vm : ViewModel
    var body: some View {
        VStack(spacing: 0) {
            //TODO: Регистрация h1
            Text("Регистрация")
                .foregroundStyle(Color.purpleColor)
                .font(.custom("Poppins-SemiBold", size: 35))
                .padding(.top, 80)
                .foregroundStyle(.black)
            VStack(spacing: 40) {
                FieldView(vm: vm, textField: "Фамилия", textVM: $vm.surname)
                FieldView(vm: vm, textField: "Имя", textVM: $vm.name)
                FieldView(vm: vm, textField: "Отчество", textVM: $vm.patronymic)
                PickDateView()
                PickVoiceView(vm: vm)
                RegistrationButtonView(vm: vm)
                Spacer()
            }
            .padding(.top, 25)
        }
        .frame(width: UIScreen.main.bounds.width - 40)
    }
}

#Preview {
    RegistrationView(vm: ViewModel())
}
