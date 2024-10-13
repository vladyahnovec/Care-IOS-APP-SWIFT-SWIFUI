//
//  HomeView.swift
//  care
//
//  Created by Круглич Влад on 9.10.24.
//

import SwiftUI

struct HomeView : View {
    @ObservedObject var vm: ViewModel
    var body: some View {
        VStack {
            HeaderView()
            NavigationPanel(vm: vm)
            ZStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.purpleColor)
                    RoundedRectangle(cornerRadius: 10)
                        .fill(.white)
                        .padding(2)
                }
                VStack {
                    HStack {
                        Text("Новости")
                        Spacer()
                        Text("Погода")
                    }
                    .foregroundColor(Color.purpleColor)
                    .padding(20)
                    .font(.custom("Poppins-Medium", size: 25))
                    ScrollView(.vertical) {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.purpleColor.opacity(0.2))
                            .frame(width: 350, height: 100)
                            .padding(.bottom, 20)
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.purpleColor.opacity(0.2))
                            .frame(width: 350, height: 100)
                            .padding(.bottom, 20)
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.purpleColor.opacity(0.2))
                            .frame(width: 350, height: 100)
                            .padding(.bottom, 20)
                    }
                    Spacer()
                }
            }
            .padding(.top, 30)
        }
    }
}

#Preview {
    HomeView(vm: ViewModel())
}
