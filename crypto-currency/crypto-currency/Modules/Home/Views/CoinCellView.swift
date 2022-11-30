//
//  CoinCellView.swift
//  crypto-currency
//
//  Created by Sevda Gul Baran on 1.12.2022.
//

import SwiftUI

struct CoinCellView: View {
    var body: some View {
        HStack {
            Text ("1")
                .font(.caption)
                .foregroundColor(.gray)
            
            Image(systemName: "bitcoinsign.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32)
                .foregroundColor(.orange)
            
            VStack(alignment: .leading) {
                Text("Bitcoin")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading, 4)
                
                Text("BTC")
                    .font(.caption)
                    .padding(.leading, 6)
            }
            .padding(.leading, 2)
            
            Spacer()
            
            VStack(alignment: .trailing) {
                Text("$20,678")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading, 4)
                
                Text("-0,23%")
                    .font(.caption)
                    .padding(.leading, 6)
                    .foregroundColor(.red)
            }
            .padding(.leading, 2)
        }
        .padding(.horizontal)
        .padding(.vertical, 4)
    }
}

struct CoinCellView_Previews: PreviewProvider {
    static var previews: some View {
        CoinCellView()
    }
}
