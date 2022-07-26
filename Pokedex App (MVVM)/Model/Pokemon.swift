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
    let description: String
    let attack: Int
    let defense: Int
    let height: Int
    let weight: Int
    
}

let MOCK_POKEMON: [Pokemon] = [
    .init(id: 0, name: "Bulbasaur", imageUrl: "pokemon", type: "poison",description: "Desc", attack: 56, defense: 53, height: 15, weight: 52),
    .init(id: 0, name: "Bulbasaur", imageUrl: "pokemon", type: "poison",description: "Desc", attack: 56, defense: 53, height: 15, weight: 52),
    .init(id: 0, name: "Bulbasaur", imageUrl: "pokemon", type: "poison",description: "Desc", attack: 56, defense: 53, height: 15, weight: 52),
    .init(id: 0, name: "Bulbasaur", imageUrl: "pokemon", type: "poison",description: "Desc", attack: 56, defense: 53, height: 15, weight: 52),
    .init(id: 0, name: "Bulbasaur", imageUrl: "pokemon", type: "poison",description: "Desc", attack: 56, defense: 53, height: 15, weight: 52)
    
]
