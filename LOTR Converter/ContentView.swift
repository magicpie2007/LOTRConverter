//
//  ContentView.swift
//  LOTR Converter
//
//  Created by 小路宏幸 on 2023/06/11.
//

import SwiftUI

struct ContentView: View {
    @State var leftAmount = ""
    @State var rightAmount = ""

    var body: some View {
        ZStack {
            // MARK: - Backgournd image
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)

            VStack {
                // MARK: - Prancing pony image
                Image("prancingpony")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)

                // MARK: - Currency exchange text
                Text("Currency Exchange")
                    .font(.largeTitle)
                    .foregroundColor(.white)

                // MARK: - Currency conversion section
                HStack {
                    // MARK: - Left conversion section
                    VStack {
                        // MARK: - Currency
                        HStack {
                            // MARK: - Currency image
                            Image("silverpiece")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)

                            // MARK: - Currency text
                            Text("Silver Piece")
                                .font(.headline)
                                .foregroundColor(.white)
                        }
                        .padding(.bottom, -5)

                        // MARK: - Text field
                        TextField("Amount", text: $leftAmount)
                            .padding(7)
                            .background(Color(UIColor.systemGray6))
                            .cornerRadius(7)
                    }

                    // MARK: - Equal sign
                    Image(systemName: "equal")
                        .font(.largeTitle)
                        .foregroundColor(.white)

                    // MARK: - Right conversion section
                    VStack {
                        HStack {
                            // MARK: - Currency text
                            Text("Gold Piece")
                                .font(.headline)
                                .foregroundColor(.white)

                            // MARK: - Currency image
                            Image("goldpiece")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                        }
                        .padding(.bottom, -5)

                        // MARK: - Text field
                        TextField("Amount", text: $leftAmount)
                            .padding(7)
                            .background(Color(UIColor.systemGray6))
                            .cornerRadius(7)
                            .multilineTextAlignment(.trailing)
                    }
                }
                .padding()
                .background(.black.opacity(0.5))
                .cornerRadius(50)

                Spacer()

                // MARK: - Info button
                HStack {
                    Spacer()

                    Button {
                        // Display exchange info screen
                    } label: {
                        Image(systemName: "info.circle.fill")
                    }
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding(.trailing)
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
