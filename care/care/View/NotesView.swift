//
//  NotesView.swift
//  care
//
//  Created by Круглич Влад on 10.10.24.
//

import SwiftUI


struct NotesView : View {
    @ObservedObject var vm : ViewModel
    var body: some View {
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
                        vm.toView = "createNoteView"
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
                                        vm.notes[vm.notes.firstIndex(where: {$0.id == note.id})!].done.toggle()
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
                                    HStack {
                                        Text(note.createdDate.formatted())
                                            .font(.custom("Poppins-Medium", size: 13))
                                        Button(action: {
                                            vm.deleteNote(index: vm.notes.firstIndex(where: {$0.id == note.id})!)
                                        }) {
                                            Image(systemName: "trash")
                                                .font(.system(size: 20))
                                                .foregroundColor(Color.red)
                                        }
                                    }
                                    .offset(y: 10)
                                }
                            }
                            .padding(20)
                        }
                        .frame(width: 350, height: 100)
                        .background(note.done ? Color.purpleColor.opacity(0.6) : Color.purpleL)
                        .cornerRadius(10)
                    }
                }
                
                Spacer()
            }
            .frame(width: UIScreen.main.bounds.width - 40)
    }
}

#Preview {
    NotesView(vm: ViewModel())
}
