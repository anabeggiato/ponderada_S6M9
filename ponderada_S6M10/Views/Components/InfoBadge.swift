//
//  InfoBadge.swift
//  ponderada_S6M9
//
//  Created by ec10-g1 on 25/05/26.
//
import SwiftUI

struct InfoBadge: View {
    let tipo: String
    let valor: String
    let emoji: String
    
    func getColor() -> Color {
        if (tipo == "episodios") {
            return Color.orange
        } else if (tipo == "temporadas") {
            return Color.green
        } else if (tipo == "status") {
            return Color.blue
        }
        
        return Color.gray
    }
    
    var body: some View {
            ZStack {
                Rectangle().stroke(getColor(), lineWidth: 2).fill(getColor()).opacity(0.3).cornerRadius(12)
                VStack(alignment: .center) {
                    Text(emoji)
                    Text(valor).fontWeight(.bold).foregroundStyle(getColor())
                    Text(tipo).font(.footnote).foregroundStyle(Color.gray)
                }.padding(10)
            }
        }
    }
