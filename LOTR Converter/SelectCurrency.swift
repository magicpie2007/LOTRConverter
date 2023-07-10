//
//  SelectCurrency.swift
//  LOTR Converter
//
//  Created by 小路宏幸 on 2023/07/10.
//

import SwiftUI

struct SelectCurrency: View {
    // MARK: - Properties
    @Binding var leftCurrency: Currency
    @Binding var rightCurrency: Currency
    @Environment(\.dismiss) var dismiss

    var body: some View {
        ZStack {
            // Backbround image
            Image("parchment")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .background(.brown)

            VStack {
                // Text
                Text("Select the currency you are starting with:")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)

                // Currency icons
                IconGrid(currency: $leftCurrency)

                // Text
                Text("Select the currency you would like to convert to:")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)

                // Currency icons
                IconGrid(currency: $rightCurrency)

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
        }
    }
}

struct SelectCurrency_Previews: PreviewProvider {
    static var previews: some View {
        SelectCurrency(leftCurrency: .constant(.silverPiece), rightCurrency: .constant(.goldPiece))
    }
}
