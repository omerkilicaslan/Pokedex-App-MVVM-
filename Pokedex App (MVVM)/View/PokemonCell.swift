//
//  PokemonCell.swift
//  Pokedex App (MVVM)
//
//  Created by Ömer Faruk Kılıçaslan on 24.07.2022.
//

import SwiftUI
import Kingfisher

struct PokemonCell: View {
    
    let pokemon: Pokemon
    let viewModel: PokemonViewModel
    
    var body: some View {
        
        ZStack {
            VStack (alignment: .leading){
                Text(pokemon.name.capitalized)
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.top, 8)
                    .padding(.leading)
                
                HStack{
                    Text(pokemon.type)
                        .font(.subheadline)
                        .bold()
                        .foregroundColor(.white)
                        .padding(.horizontal, 16)
                        .padding(.vertical, 8)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.white.opacity(0.25))
                        )
                        .frame(width: 100, height: 24)
                        
                    KFImage(URL(string: pokemon.imageUrl))
                        .resizable()
                        .scaledToFit()
                        .frame(width: 68, height: 68)
                        .padding([.bottom, .trailing], 4)
                }
            }
            
        }
        
        .background(Color(viewModel.backgroundColor(forType: pokemon.type)))
        .cornerRadius(12)
        .shadow(color: Color(viewModel.backgroundColor(forType: pokemon.type)), radius: 6, x: 3, y: 3)
        
    }
}


