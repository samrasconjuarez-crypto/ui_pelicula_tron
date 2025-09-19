//
//  VistaPanel.swift
//  tron_interfaz
//
//  Created by alumno on 9/17/25.
//

import SwiftUI

// MOLÉCULA: El marco reutilizable para todos los paneles.
struct VistaPanel<Content: View>: View {
    let titulo: String
    let colorAcento: Color
    @ViewBuilder let contenido: Content

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text(titulo)
                .font(.custom("Menlo", size: 12)) //tamaño y nombre de la tipografia
                .foregroundColor(colorAcento)
                .padding(.top, 10)
                .padding(.horizontal, 5)
                .background(Color.black)
                .offset(y: -20)

            contenido
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        }
        .padding()
        .background(Color.black.opacity(0.4))
        .clipShape(RoundedRectangle(cornerRadius: 4))
        .overlay(
            RoundedRectangle(cornerRadius: 4)
                .stroke(colorAcento.opacity(0.8), lineWidth: 1.5)
                .shadow(color: colorAcento, radius: 4)
        )
    }
}
