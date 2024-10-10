//
//  NotesView.swift
//  care
//
//  Created by Круглич Влад on 10.10.24.
//

import SwiftUI


struct NotesView : View {
    @ObservedObject var vm : ViewModel
    @State var textNote = ""
    @State var checker = false
    var body: some View {
        if (vm.toView == "notesView") {
            VStack {
                HStack {
                    Text("Заметки")
                        .font(.custom("Poppins-Black", size: 25))
                        .foregroundStyle(Color.purpleColor)
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
                    Button(action: {
                        vm.toView = "createNote"
                    }) {
                        Image(systemName: "plus")
                            .font(.system(size: 25))
                            .foregroundStyle(Color.purpleColor)
                    }
                }
                .padding(.bottom, 20)
                
                //TODO: Задачи
                ScrollView() {
                    ForEach(vm.notes.sorted(by: {$0.done && !$1.done}), id: \.self) {
                        note in
                        HStack {
                            VStack {
                                HStack {
                                    Button(action: {
                                        let index = vm.notes.firstIndex(where: {$0.id == note.id})
                                        vm.notes[index!].done.toggle()
                                    }) {
                                        ZStack {
                                            Circle()
                                                .fill(Color.purpleColor)
                                                .frame(width: 35)
                                            Circle()
                                                .fill(note.done ? Color.purpleColor : .white)
                                                .frame(width: 30)
                                        }
                                        
                                    }
                                    Text(note.text)
                                        .font(.custom("Poppins-Medium", size: 20))
                                    Spacer()
                                }
                                HStack {
                                    Spacer()
                                    Text(note.createdDate.formatted())
                                        .offset(y: 20)
                                        .font(.custom("Poppins-Medium", size: 12))
                                }
                            }
                            .padding(20)
                        }
                        .frame(width: 350, height: 100)
                        .background(note.done ? Color.purpleColor.opacity(0.7) : Color.purpleL)
                        .cornerRadius(10)
                    }
                }
                
                Spacer()
            }
            .frame(width: UIScreen.main.bounds.width - 40)
        }
        //TODO: Создание задачи
        else if vm.toView == "createNote" {
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
                        .frame(width: UIScreen.main.bounds.width - 60, height: 100)
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
                .frame(width: UIScreen.main.bounds.width - 40, height: 120)
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
}

#Preview {
    NotesView(vm: ViewModel())
}
