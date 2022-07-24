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
                    
                    HStack{
                        Text(pokemon.name.capitalized)
                            .foregroundColor(.white)
                            .font(.largeTitle)
                        
                        Spacer()
                        
                        Text(pokemon.type.capitalized)
                            .foregroundColor(.orange)
                            .font(.largeTitle)
                    }
                    .padding(.bottom, 350)
                    .padding(.horizontal)
                        
                    
                    
                }
                
                
                    
            }
        }
        
        
        
    }
}

struct PokeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PokeDetailView(pokemon: Pokemon(id: 0, name: "Omer", imageUrl: "", type: "Zart"))
    }
}
