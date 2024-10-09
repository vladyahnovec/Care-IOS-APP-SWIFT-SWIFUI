//
//  PickVoiceView.swift
//  care
//
//  Created by Круглич Влад on 9.10.24.
//

import SwiftUI
import AVFAudio
struct PickVoiceView: View {
    @ObservedObject var vm: ViewModel
    var body: some View {
        HStack {
            Text("Выберите голос помощника:")
                .font(.custom("Poppins-Bold", size: 17))
                .foregroundColor(Color.purpleColor)
            Spacer()
            Menu(vm.voice) {
                Button(action: {
                    vm.voice = "Женский"
                    AudioManager.shared.playSound(named: "hi")
                }) {
                    Text("Женский")
                }
                Button(action: {vm.voice = "Мужской"}) {
                    Text("Мужской")
                }
            }
            .foregroundColor(Color.white)
            .padding(10)
            .background(Color.purpleColor)
            .cornerRadius(15)
        }
        .padding(.leading, 20)
    }
}

