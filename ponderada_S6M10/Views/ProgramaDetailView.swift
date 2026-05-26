// NarutoDetailView.swift
import SwiftUI

struct ProgramaDetailView: View {
    let programa: Programa
    let animeColor = Color.orange
    let desenhoColor = Color.blue
    let serieColor = Color.purple

    func getColor() -> Color {
        if programa.tipo == "Anime" {
            return animeColor
        } else if programa.tipo == "Desenho" {
            return desenhoColor
        } else if programa.tipo == "Serie" {
            return serieColor
        }

        return Color.gray
    }

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                //hero
                ZStack {
                    Rectangle().fill(Color.indigo).frame(height: 250)

                    VStack {
                        Spacer()
                        Text(programa.emoji).foregroundStyle(.black).font(
                            Font.title
                        )

                        HStack {
                            VStack(alignment: .leading) {
                                Capsule().fill(getColor()).overlay(
                                    Text(programa.tipo).foregroundStyle(.white)
                                ).frame(width: 90, height: 30)
                                Text(programa.nome).foregroundStyle(.white)
                                    .font(Font.title.bold())
                            }
                            Spacer()
                        }.padding(10)
                    }
                }

                //sinopse
                VStack(alignment: .leading, spacing: 16) {
                    Text("Sinopse").font(.system(size: 20, weight: .bold))
                    Text(programa.sinopse).font(Font.subheadline)
                    Divider()
                    Text("Informações").font(.system(size: 20, weight: .bold))

                    //infos (episodios, temporadas, status)
                    HStack {
                        InfoBadge(
                            tipo: "episodios",
                            valor: String(programa.episodios),
                            emoji: "\u{1F3A5}"
                        )
                        InfoBadge(
                            tipo: "temporadas",
                            valor: String(programa.temporadas),
                            emoji: "\u{1F4FA}"
                        )
                        InfoBadge(
                            tipo: "status",
                            valor: String(programa.status),
                            emoji: "\u{1F551}"
                        )
                    }

                    // personagens
                    Divider()
                    Text("Personagens principais").font(.system(size: 20, weight: .bold))
                    ForEach(programa.personagens, id: \.nome) { personagem in
                        HStack {
                            CharacterRow(personagem: personagem)
                        }

                    }
                    
                    Button("Ver todos os episódios", systemImage:"arrowshape.right.fill", action: {}).padding(16).background(getColor()).foregroundColor(.white).cornerRadius(30).frame(maxWidth: .infinity)
                        
                }.padding(10)
            }

        }
        .ignoresSafeArea(edges: .top)
        .navigationBarTitleDisplayMode(.inline)
    }
}
