//
//  PokedexView.swift
//  Pokedex App (MVVM)
//
//  Created by Ömer Faruk Kılıçaslan on 24.07.2022.
//

import SwiftUI

struct PokedexView: View {
    
    private let gridItems = [GridItem(.flexible()),GridItem(.flexible())]
    
    var body: some View {
        
        NavigationView{
            
            ScrollView {
                
                LazyVGrid(columns: gridItems, spacing: 16) {
                    
                    ForEach(0..<151) { _ in
                        
                        PokemonCell()
                    }
                }
                
            }
            .navigationTitle("Pokemon")
            
        }
        
    }
}

struct PokedexView_Previews: PreviewProvider {
    static var previews: some View {
        PokedexView()
    }
}
