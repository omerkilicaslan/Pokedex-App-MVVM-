//
//  PokeDetailView.swift
//  Pokedex App (MVVM)
//
//  Created by Ömer Faruk Kılıçaslan on 24.07.2022.
//

import SwiftUI
import Kingfisher

struct PokeDetailView: View {
    
    
    
    var pokemon: Pokemon
    
    var body: some View {
        
        NavigationView{
            ScrollView{
                ZStack{
                    Color.white.edgesIgnoringSafeArea(.all)
                    
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.indigo)
                        .offset(x: 0, y: UIScreen.main.bounds.height * 0.1)
                        .overlay {
                            KFImage(URL(string: pokemon.imageUrl))
                                .resizable()
                                .frame(width: 150, height: 150)
                                .offset(x: 0, y: -280)

                        }

                    VStack{
                        Text(pokemon.name.capitalized)
                            .foregroundColor(.white)
                            .font(.largeTitle)
                            .padding(.top, 100)
                        
                        Text(pokemon.type.capitalized)
                            .foregroundColor(.white)
                            .padding(.horizontal, 20)
                            .padding(.vertical,5)
                            .background(.orange)
                            .font(.title2)
                            .cornerRadius(15)

                        Text(pokemon.description)
                            .foregroundColor(.white)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                            .padding()
                        
                        HStack{
                            Text("Stats")
                                .bold()
                                .foregroundColor(.yellow)
                                
                             
                            Spacer()
                        }
                        .padding()
                        
                        
                        
                        VStack(alignment: .leading){
                            ProgressBarRow(pokemonValue: CGFloat(pokemon.height), pokemon: pokemon, headlineText: "Height")
                            ProgressBarRow(pokemonValue: CGFloat(pokemon.attack), pokemon: pokemon, headlineText: "Attack")
                            ProgressBarRow(pokemonValue: CGFloat(pokemon.defense), pokemon: pokemon, headlineText: "Defense")
                            ProgressBarRow(pokemonValue: CGFloat(pokemon.weight), pokemon: pokemon, headlineText: "Weight")
                            ProgressBarRow(pokemonValue: CGFloat(87), pokemon: pokemon, headlineText: "Total")
                        }
                        
    
                    }
                    .padding(.horizontal)

                }
            }
        }
        
        
        
    }
}

struct PokeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PokeDetailView(pokemon: Pokemon(id: 0, name: "Bulbasaur", imageUrl: "pokemon", type: "poison",description: "There is a bud on this Pokémon’s back. To support its weight,\nIvysaur’s legs and trunk grow thick and strong.\nIf it starts spending more time lying in the sunlight,\nit’s a sign that the bud will bloom into a large flower soon.", attack: 56, defense: 53, height: 15, weight: 52))
    }
}
