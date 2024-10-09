//
//  HeaderView.swift
//  care
//
//  Created by Круглич Влад on 9.10.24.
//

import SwiftUI

struct HeaderView : View {
    var body: some View {
        HStack {
            Image("logo")
            Spacer()
            Button(action: {}) {
                Image(systemName: "gearshape")
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color.purpleColor)
            }
        }
        .frame(width: 350, height: 70)
    }
}


#Preview {
    HeaderView()
}
