//
//  Pokemon.swift
//  Pokedex App (MVVM)
//
//  Created by Ömer Faruk Kılıçaslan on 24.07.2022.
//

import Foundation


struct Pokemon : Codable, Identifiable {
    
    let id: Int
    let name: String
    let imageUrl: String
    let type: String
    
}

let MOCK_POKEMON: [Pokemon] = [
    .init(id: 0, name: "Bulbasaur", imageUrl: "pokemon", type: "poison"),
    .init(id: 1, name: "Ivysaur", imageUrl: "pokemon", type: "poison"),
    .init(id: 2, name: "Venusaur", imageUrl: "pokemon", type: "poison"),
    .init(id: 3, name: "Charmender", imageUrl: "pokemon", type: "fire"),
    .init(id: 4, name: "Charmeleon", imageUrl: "pokemon", type: "fire"),
    .init(id: 5, name: "Charizard", imageUrl: "pokemon", type: "fire")
]
