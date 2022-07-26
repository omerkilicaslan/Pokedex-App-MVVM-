//
//  PokedexView.swift
//  Pokedex App (MVVM)
//
//  Created by Ömer Faruk Kılıçaslan on 24.07.2022.
//

import SwiftUI

struct PokedexView: View {
    
    private let gridItemCollection = [GridItem(.flexible())]
    private let gridItems = [GridItem(.flexible()),GridItem(.flexible())]

    @ObservedObject var viewModel = PokemonViewModel()
    
    var body: some View {
        
        NavigationView{
            
            
            VStack(spacing: 5){
                
                ScrollView(.horizontal){
                    
                    LazyHGrid(rows: gridItemCollection, spacing: 16) {
                        
                        ForEach(viewModel.pokemon) { pokemon in
                            
                            NavigationLink {
                                PokeDetailView(pokemon: pokemon)
                            } label: {
                                PokemonCell(pokemon: pokemon, viewModel: viewModel, widthValue: 200, heightValue: 250)
                                    
                            }
                            
                        }
                        
                    }
                    
                    .padding()
                    
                    
                    
                }
                

                ScrollView {
                    
                    LazyVGrid(columns: gridItems, spacing: 16) {
                        
                        ForEach(viewModel.pokemon) { pokemon in
                            
                            NavigationLink {
                                PokeDetailView(pokemon: pokemon)
                            } label: {
                                PokemonCell(pokemon: pokemon, viewModel: viewModel, widthValue: 200, heightValue: 120)
                            }
                            
                        }
                    }
                    
                    
                }
                .navigationTitle("Pokemon")
                
                Spacer()
            }.toolbar {
                NavigationLink {
                    PokemonAddView()
                } label: {
                    Image(systemName: "plus")
                }


            }
            
            
        }
        
    }
}

struct PokedexView_Previews: PreviewProvider {
    static var previews: some View {
        PokedexView()
    }
}
