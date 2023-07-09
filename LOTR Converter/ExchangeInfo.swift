//
//  ExchangeInfo.swift
//  LOTR Converter
//
//  Created by 小路宏幸 on 2023/07/09.
//

import SwiftUI

struct ExchangeInfo: View {
    // MARK: - Properties
    @Environment(\.dismiss) var dismiss

    var body: some View {
        ZStack {
            // Background image
            Image("parchment")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .background(.brown)

            VStack {
                // Title text
                Text("Exchange rate")
                    .font(.largeTitle)

                // Body text
                Text("Here at the Prancing Pony, we are happy to offer you a place where you can exchange all the known currencies in the entire world except one. We used to take Brandy Bucks, but after finding out that it was a person instead of a piece of paper, we realized it had no value to us. Below is a simple guide to our currency exchange rates:")
                    .font(.title2)
                    .padding()

                // Exchange rate
                ExchangeRate(leftImage: "goldpiece", text: "1 Gold Piece = 4 Gold Pennies", rightImage: "goldpenny")

                ExchangeRate(leftImage: "goldpenny", text: "1 Gold Penny = 4 Sliver Pieces", rightImage: "silverpiece")

                ExchangeRate(leftImage: "silverpiece", text: "1 Silver Piece = 4 Silver Pennies", rightImage: "silverpenny")

                ExchangeRate(leftImage: "silverpenny", text: "1 Silver Penny = 100 Copper Pennies", rightImage: "copperpenny")


                // Done button
                Button {
                    dismiss()
                } label: {
                    Text("Done")
                        .font(.largeTitle)
                        .padding(10)
                        .foregroundColor(.white)
                        .background(.brown)
                        .cornerRadius(15)
                }
            }
            .foregroundColor(.black)
        }
    }
}

struct ExchangeInfo_Previews: PreviewProvider {
    static var previews: some View {
        ExchangeInfo()
            .preferredColorScheme(.dark)
    }
}
