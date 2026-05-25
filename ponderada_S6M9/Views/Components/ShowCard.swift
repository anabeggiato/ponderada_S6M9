
// ShowCard.swift -- componente reutilizavel
import SwiftUI
struct ShowCard: View {
    let programa: Programa
    let animeColor = Color.orange
    let desenhoColor = Color.blue
    let serieColor = Color.purple
    
    func getColor() -> Color {
        if (programa.tipo == "Anime") {
            return animeColor
        } else if (programa.tipo == "Desenho") {
            return desenhoColor
        } else if (programa.tipo == "Serie") {
            return serieColor
        }
        
        return Color.gray
    }
    
 
    var body: some View {

        
        HStack(spacing: 12) {
            // TODO A: barra lateral colorida por tipo
            
            Rectangle()
                .fill(getColor())
                .frame(width: 6)

            // TODO B: thumbnail com emoji
            
            RoundedRectangle(cornerRadius: 10).fill(getColor().opacity(0.1)).overlay(Text(programa.emoji))
            VStack {
                Capsule().fill(getColor()).overlay(
                    Text(programa.tipo).foregroundStyle(.white)
                ).frame(height: 30)
                Text(programa.nome).font(.headline).fontWeight(.bold)
                Text(programa.genero).font(.subheadline).foregroundStyle(.gray)
                HStack {
                    Text(String(repeating: "\u{2B50}", count: Int(programa.avaliacao)))
                    Text(String(programa.avaliacao))
                }

            }
            
            Spacer()
            // TODO D: chevron Image(systemName: "chevron.right")
            Text(Image(systemName: "chevron.right"))
        }
        .background(Color(.systemBackground))
        .cornerRadius(16)
    }
}

