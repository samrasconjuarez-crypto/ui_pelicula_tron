//
//  ModuloCalendario.swift
//  tron_interfaz
//
//  Created by alumno on 9/17/25.
//

import SwiftUI

// MOLÉCULA: La rejilla del calendario, hecha de átomos "CeldaDeRejilla".
struct ModuloCalendario: View {
    private let columnas = Array(repeating: GridItem(.flexible()), count: 12)
    
    var body: some View {
        LazyVGrid(columns: columnas, spacing: 5) {
            ForEach(0..<48) { indice in
                // Lógica de color: si el índice es divisible por 5, usa cyan, si no, usa azul oscuro.
                let colorCelda = (indice % 5 == 0) ? Color.cyan : Color.blue.opacity(0.3)
                
                // Le pasamos el color decidido a nuestro átomo.
                CeldaDeRejilla(color: colorCelda)
            }
        }
    }
}
