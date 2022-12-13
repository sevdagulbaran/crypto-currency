//
//  HomeViewModel.swift
//  crypto-currency
//
//  Created by Sevda Gul Baran on 5.12.2022.
//

import Foundation


class HomeViewModel: ObservableObject {
    @Published var coins = [Coin]()
    init() {
        fetchCoinData()
    }
    
    func fetchCoinData() {
        guard let url = URL(string: ServiceConstants.APIUrl) else {return}
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error{
                print("DEBUG: err \(error.localizedDescription)")
                return
            }
            
            if let response = response as? HTTPURLResponse {
                print("DEBUG: response code \(response.statusCode)")
            }
          
            guard let data = data else { return }
            
            do {
                let coins = try JSONDecoder().decode([Coin].self, from: data)
                self.coins = coins
            }catch let error{
                print("failed: \(error)")
            }
        }.resume()
    }
}
