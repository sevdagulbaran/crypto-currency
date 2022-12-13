//
//  TopMoversView.swift
//  crypto-currency
//
//  Created by Sevda Gul Baran on 29.11.2022.
//

import SwiftUI

struct TopMoversView: View {
    @StateObject var viewModel: HomeViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Top Movers")
                .font(.headline)
            ScrollView(.horizontal) {
                HStack(spacing: 16) {
                    ForEach(viewModel.coins) { coin in
                        TopMoverCellView(coin: coin)
                    }
                }
            }
        }.padding()
    }
}

 
