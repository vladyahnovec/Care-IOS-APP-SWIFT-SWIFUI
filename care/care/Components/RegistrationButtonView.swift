//
//  RegistrationButtonView.swift
//  care
//
//  Created by Круглич Влад on 9.10.24.
//

import SwiftUI

struct RegistrationButtonView: View {
    @ObservedObject var vm: ViewModel
    var body: some View {
        VStack {
            Button(action: {
                vm.toView = "homeView"
            }) {
                ZStack {
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color.purpleColor)
                        .frame(width: 350, height: 70)
                    RoundedRectangle(cornerRadius: 12)
                        .fill(.white)
                        .frame(width: 346, height: 66)
                    Text("Зарегистрироваться")
                        .foregroundStyle(Color.purpleColor)
                        .font(.custom("Poppins-SemiBold", size: 22))
                }
            }
        }
        .frame(width: 350, height: 70)
    }
}
