//
//  SportView.swift
//  care
//
//  Created by Круглич Влад on 10.10.24.
//

import SwiftUI


struct SportView : View {
    @ObservedObject var vm: ViewModel
    var body: some View {
        VStack {
            HStack {
                Text("Спорт")
                    .foregroundStyle(Color.purpleColor)
                    .font(.custom("Poppins-Black", size: 25))
                Spacer()
                Button(action: {
                    vm.toView = "homeView"
                }) {
                    Image(systemName: "arrow.left")
                        .font(.system(size: 25))
                        .foregroundStyle(Color.purpleColor)
                }
            }
            .frame(height: 70)
            
            HStack {
                FindFieldView(vm: vm)
                Spacer()
            }
            ScrollView {
                ForEach(vm.sports.sorted(by: {$0.like && !$1.like}), id: \.self) {
                    i in
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(i.like ? Color.purpleColor.opacity(0.4) : Color.purpleColor)
                            .frame(width: UIScreen.main.bounds.width - 35 , height: 165)
                        RoundedRectangle(cornerRadius: 10)
                            .fill(i.like ? Color.purpleColor.opacity(0.4) : Color.white)
                            .frame(width: UIScreen.main.bounds.width - 40 , height: 160)
                        VStack {
                            Text(i.name)
                                .font(.custom("Poppins-Medium", size: 17))
                                .multilineTextAlignment(.center)
                            Text(i.description)
                                .font(.custom("Poppins-Thin", size: 16))
                                .lineLimit(3)
                                .padding(.top, 5)
                                .padding(.horizontal, 20)
                                .multilineTextAlignment(.center)
                        }
                    }
                    .padding(.top, 15)
                }
            }
            Spacer()
        }
        .frame(width: UIScreen.main.bounds.width - 40)
    }
}

#Preview {
    SportView(vm: ViewModel())
}
