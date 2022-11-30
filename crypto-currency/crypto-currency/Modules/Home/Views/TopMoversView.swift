//
//  TopMoversView.swift
//  crypto-currency
//
//  Created by Sevda Gul Baran on 29.11.2022.
//

import SwiftUI

struct TopMoversView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Top Movers")
                .font(.headline)
            ScrollView(.horizontal) {
                HStack(spacing: 16) {
                    ForEach(0 ..< 5, id: \.self) { _ in
                        TopMoverCellView()
                    }
                }
            }
        }.padding()
    }
}

struct TopMoversView_Previews: PreviewProvider {
    static var previews: some View {
        TopMoversView()
    }
}
