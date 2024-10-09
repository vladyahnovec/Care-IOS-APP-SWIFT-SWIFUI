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
            }
            .frame(height: 70)
            
            FindFieldView()
            
            //TODO: Задачи
            VStack(spacing: 20) {
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
}

#Preview {
    NotesView(vm: ViewModel())
}
