//
//  HomeView.swift
//  crypto-currency
//
//  Created by Sevda Gul Baran on 29.11.2022.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                //top movers view
                TopMoversView()
                
                Divider()
                //all coins view
                AllCoinsView()
            }
            .navigationTitle("Live Prices")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
