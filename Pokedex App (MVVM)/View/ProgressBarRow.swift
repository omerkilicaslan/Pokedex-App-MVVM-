//
//  ProgressBarRow.swift
//  Pokedex App (MVVM)
//
//  Created by Ömer Faruk Kılıçaslan on 25.07.2022.
//

import SwiftUI

struct ProgressBarRow: View {
    
    var pokemonValue: CGFloat
    let pokemon: Pokemon
    var headlineText: String
    
    
    
    var body: some View {
        HStack(spacing: 50){
            
            
            
            Text(headlineText)
                .font(.system(size: 20))
                .foregroundColor(.gray)
                .frame(width: 75, height: 20, alignment: .leading)
            
            
            Text("\(Int(pokemonValue))")
                .bold()
                .font(.system(size: 20))
                .frame(width: 75, height: 20, alignment: .leading)
        
            
            ProgressBar(pokemon: pokemon, pokemonValue: pokemonValue)
            
            
        }
    }
}

struct ProgressBarRow_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBarRow(pokemonValue: 25, pokemon: MOCK_POKEMON[0], headlineText: "Zort")
    }
}

// Class struct, heap, stack fifo?

