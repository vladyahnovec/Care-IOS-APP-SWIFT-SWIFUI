//
//  CreateNoteView.swift
//  care
//
//  Created by Круглич Влад on 11.10.24.
//

import SwiftUI

struct CreateNoteView: View {
    @ObservedObject var vm: ViewModel
    @State var textNote = ""
    @State var checker = false
    var body: some View {
        VStack {
            HStack {
                Text("Создать заметку")
                    .font(.custom("Poppins-Black", size: 25))
                    .foregroundStyle(Color.purpleColor)
                    .frame(height: 100)
                Spacer()
                Button(action: {
                    vm.toView = "notesView"
                }) {
                    Image(systemName: "arrow.left")
                        .font(.system(size: 25))
                        .foregroundStyle(Color.purpleColor)
                }
            }
            ZStack {
                TextEditor(text: $textNote)
                    .frame(width: UIScreen.main.bounds.width - 50, height: 170)
                    .foregroundColor(Color.purpleColor)
                    .font(.custom("Poppins-Medium", size: 20))
                    .cornerRadius(10)
                VStack {
                    HStack {
                        Text(textNote.isEmpty ? "Ваша заметка..." : "")
                            .font(.custom("Poppins-Thin", size: 20))
                            .foregroundColor(Color.purpleColor)
                        Spacer()
                    }
                    .padding(.leading, 15)
                    .padding(.top, 15)
                    Spacer()
                }
            }
            .frame(width: UIScreen.main.bounds.width - 40, height: 180)
            .background(Color.purpleColor)
            .cornerRadius(10)
            if checker {
                Text("Заметка должна содержать текст!")
                    .foregroundStyle(Color.red)
                    .font(.custom("Poppins-Medium", size: 17))
            }
            Button(action: {
                if (textNote != "") {
                    vm.toView = "notesView"
                    vm.addToNotes(text: textNote)
                }
                else {
                    checker = true
                }
            }) {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.purpleColor)
                    Text("Создать")
                        .foregroundStyle(Color.white)
                        .font(.custom("Poppins-Black", size: 20))
                }
                .frame(width: UIScreen.main.bounds.width - 40, height: 50)
                .padding(.top, 20)
            }
            Spacer()
        }
        .frame(width: UIScreen.main.bounds.width - 40)
    }
}

#Preview {
    CreateNoteView(vm: ViewModel())
}
