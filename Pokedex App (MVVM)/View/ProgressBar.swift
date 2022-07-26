//
//  ProgressBar.swift
//  Pokedex App (MVVM)
//
//  Created by Ömer Faruk Kılıçaslan on 25.07.2022.
//

import SwiftUI

struct ProgressBar: View {
    
    let pokemon: Pokemon
    var pokemonValue: CGFloat
    
    var body: some View {
        
        ZStack(alignment: .leading){
            
            RoundedRectangle(cornerRadius: 15,style: .continuous)
                .frame(width: 100, height: 15)
                .foregroundColor(.black.opacity(0.1))
                .cornerRadius(20)
            
            RoundedRectangle(cornerRadius: 15,style: .continuous)
                .frame(width: pokemonValue >= 200 ? 100 * (pokemonValue / 1000) : 100 * (pokemonValue / 200) , height: 15)
                .foregroundColor(.orange)
                .cornerRadius(20)

            
            
        }
    }
}

struct ProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBar(pokemon: MOCK_POKEMON[0], pokemonValue: 12)
    }
}
