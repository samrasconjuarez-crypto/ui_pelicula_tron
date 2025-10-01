//
//  VistaGraficoDatos.swift
//  tron_interfaz
//
//  Created by alumno on 9/17/25.
//

import SwiftUI

struct VistaGraficoDatos: View {
    let esOnda: Bool
    let color: Color // ✅ AÑADIDO: La propiedad para recibir el color.

    var body: some View {
        Image(systemName: esOnda ? "waveform.path.ecg" : "chart.bar.xaxis")
            .resizable()
            .scaledToFit()
            // ✅ CAMBIADO: Usamos la nueva propiedad en lugar de un color fijo.
            .foregroundColor(color)
            .padding()
    }
}
