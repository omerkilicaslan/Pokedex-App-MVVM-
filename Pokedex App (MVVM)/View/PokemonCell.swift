//
//  PokemonCell.swift
//  Pokedex App (MVVM)
//
//  Created by Ömer Faruk Kılıçaslan on 24.07.2022.
//

import SwiftUI

struct PokemonCell: View {
    var body: some View {
        
        ZStack {
            VStack (alignment: .leading){
                Text("Bulbasaur")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.top, 8)
                    .padding(.leading)
                
                HStack{
                    Text("poison")
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
                        
                    Image("pokemon")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 68, height: 68)
                        .padding([.bottom, .trailing], 4)
                }
            }
            
        }
        .background(Color.green)
        .cornerRadius(12)
        .shadow(color: .green, radius: 6, x: 3, y: 3)
        
    }
}

struct PokemonCell_Previews: PreviewProvider {
    static var previews: some View {
        PokemonCell()
    }
}
