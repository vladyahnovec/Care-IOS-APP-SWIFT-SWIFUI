//
//  BooksView.swift
//  care
//
//  Created by Круглич Влад on 11.10.24.
//

import SwiftUI

struct BooksView: View {
    @ObservedObject var vm: ViewModel
    var body: some View {
        VStack {
            HStack {
                Text("Книги")
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
            }
            ScrollView {
                LazyVGrid(columns: [GridItem(.fixed(170)), GridItem(.fixed(170))], content: {
                    ForEach(vm.books.sorted(by: {$0.like && !$1.like}), id: \.self) {
                        book in
                        VStack {
                            Text(book.name)
                                .multilineTextAlignment(.center)
                                .font(.custom("Poppins-Medium", size: 20))
                            Text(book.author)
                                .font(.custom("Poppins-Thin", size: 13))
                            Spacer()
                            HStack {
                                Spacer()
                                Button(action: {
                                    vm.books[vm.books.firstIndex(where: {$0.id == book.id})!].like.toggle()
                                }) {
                                    if (book.like) {
                                        Image(systemName: "heart.fill")
                                            .font(.system(size: 25))
                                            .foregroundStyle(.red)
                                    }
                                    else {
                                        Image(systemName: "heart")
                                            .font(.system(size: 25))
                                            .foregroundStyle(.red)
                                    }
                                }
                            }
                            .padding(10)
                        }
                        .frame(width: 170, height: 200)
                        .background(book.like ? Color.purpleColor.opacity(0.6) : Color.purpleColor.opacity(0.2))
                        .cornerRadius(10)
                    }
                })
            }
            Spacer()
        }
        .frame(width: UIScreen.main.bounds.width - 40)
    }
}

#Preview {
    BooksView(vm: ViewModel())
}
