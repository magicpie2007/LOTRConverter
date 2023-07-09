//
//  ExchangeRate.swift
//  LOTR Converter
//
//  Created by 小路宏幸 on 2023/07/09.
//

import SwiftUI

struct ExchangeRate: View {
    // MARK: - Properties
    @State var leftImage: String
    @State var text: String
    @State var rightImage: String

    var body: some View {
        HStack {
            // Left currency image
            Image(leftImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)

            // Exchange rate text
            Text(text)

            // Right currency image
            Image(rightImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
        }
    }
}

struct ExchangeRate_Previews: PreviewProvider {
    static var previews: some View {
        ExchangeRate(leftImage: "goldpenny", text: "1 Gold Penny = 4 Sliver Pieces", rightImage: "silverpiece")
            .previewLayout(.sizeThatFits)
    }
}
