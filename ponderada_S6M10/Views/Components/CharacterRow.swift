//
//  CharacterRow.swift
//  ponderada_S6M9
//
//  Created by ec10-g1 on 25/05/26.
//

import SwiftUI

struct CharacterRow: View {
    let personagem: (nome: String, papel: String, emoji: String)
    
    var body: some View {
        Text(personagem.emoji)
        VStack(alignment: .leading) {
            Text(personagem.nome).font(
                .system(size: 18, weight: .bold)
            )
            Text(personagem.papel).font(
                .system(size: 16)).foregroundStyle(Color.gray)
        }
    }
}
