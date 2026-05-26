import SwiftUI

struct SecretView: View {
    @State private var expandido = false
    
    var body: some View {
        VStack(spacing: 24) {
            Image("murilo")
            
                .animation(.spring(response: 0.5, dampingFraction: 0.6),
                           value: expandido)
            
        }
    }
}
