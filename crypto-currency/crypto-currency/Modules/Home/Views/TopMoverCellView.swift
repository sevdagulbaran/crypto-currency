//
//  TopMoversItem.swift
//  crypto-currency
//
//  Created by Sevda Gul Baran on 29.11.2022.
//

import SwiftUI

struct TopMoverCellView: View {
    let coin: Coin
    
    var body: some View {
        VStack(alignment: .leading) {
            //image
            Image(systemName: "bitcoinsign.circle.fill")
                .resizable()
                .frame(width: 32, height: 32)
                .foregroundColor(.orange)
                .padding(.bottom,6)
            //coin info
            HStack(spacing: 2) {
                Text(coin.symbol.uppercased())
                    .font(.caption)
                    .fontWeight(.bold)
                
                Text("$16,200")
                    .font(.caption)
                    .fontWeight(.bold)
            }
            //coin percent change
            Text("+ 7.80%")
                .font(.title2)
                .foregroundColor(.green)
        }.frame(width: 140, height: 140)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.systemGray4),lineWidth: 3)
        )
    }
}


