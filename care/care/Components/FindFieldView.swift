//
//  FindFieldView.swift
//  care
//
//  Created by Круглич Влад on 10.10.24.
//

import SwiftUI

struct FindFieldView: View {
    var body: some View {
        ZStack {
            HStack {
                HStack {}
                    .frame(width: 250, height: 40)
                    .background(Color.purpleColor)
                    .cornerRadius(10)
                Spacer()
            }
            HStack {
                Text("Поиск")
                    .foregroundStyle(.white)
                    .padding(.leading, 10)
                    .font(.custom("Poppins-Thin", size: 20))
                Spacer()
            }
        }
    }
}

#Preview {
    FindFieldView()
}
