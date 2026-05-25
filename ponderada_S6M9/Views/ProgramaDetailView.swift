
// NarutoDetailView.swift
import SwiftUI

struct ProgramaDetailView: View {
    let programa: Programa
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                // TODO E: ZStack com hero (fundo + emoji + overlay)
                //         badge de tipo + nome em cima do hero
 
                // TODO F: secao Sinopse (Text com naruto.sinopse)
 
                // TODO G: HStack com 3x InfoBadge
                //         (episodios, temporadas, status)
 
                // TODO H: secao Personagens
                //         ForEach sobre naruto.personagens
                //         -> CharacterRow para cada um
            }
        }
        .ignoresSafeArea(edges: .top)
        .navigationBarTitleDisplayMode(.inline)
    }
}
