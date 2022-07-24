//
//  PokemonViewModel.swift
//  Pokedex App (MVVM)
//
//  Created by Ömer Faruk Kılıçaslan on 24.07.2022.
//

import SwiftUI


class PokemonViewModel : ObservableObject {
    
    @Published var pokemon = [Pokemon]()
    
    let baseUrl = "https://pokedex-bb36f.firebaseio.com/pokemon.json"
    
    func fetchPokemon() {
        
        guard let url = URL(string: baseUrl) else {return}
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            guard let data = data else {return}
            guard let pokemon = try? JSONDecoder().decode([Pokemon].self, from: data) else {return}
            
            DispatchQueue.main.async {
                self.pokemon = pokemon
            }
        }
        .resume()
        
    }
    
}

extension Data {
    
    func parseData(removeString string: String) -> Data? {
        let dataAsString = String(data: self, encoding: .utf8)
        let parsedDataString = dataAsString?.replacingOccurrences(of: string, with: "")
        guard let data = parsedDataString?.data(using: .utf8) else {return nil}
        return data
    }
}
