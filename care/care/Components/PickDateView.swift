//
//  PickDateView.swift
//  care
//
//  Created by Круглич Влад on 9.10.24.
//

import SwiftUI

struct PickDateView: View {
    @State private var birthDate = Date.now
    var body: some View {
        ZStack {
            HStack {
                Text("Дата рождения")
                    .foregroundStyle(.white)
                    .font(.custom("Poppins-Thin", size: 22))
                Spacer()
                ZStack {
                    Text("\(birthDate.formatted(.dateTime.year().month().day().locale(Locale(identifier: "ru_RU"))))")
                        .foregroundStyle(.white)
                    DatePicker(selection: $birthDate, in: ...Date.now, displayedComponents: .date) {}
                        .frame(width: 120, height: 30)
                        .background(Color.purpleColor).opacity(0.1)
                }
            }
            .padding(.horizontal, 20)
        }
        .frame(width: 350, height: 70)
        .background(Color.purpleColor)
        .cornerRadius(15)
        .shadow(color: Color.purpleColor, radius: 14, x: 10, y: 4)
    }
}

#Preview {
    PickDateView()
}
