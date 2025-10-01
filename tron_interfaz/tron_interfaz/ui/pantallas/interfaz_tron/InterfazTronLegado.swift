//
//  InterfazTronLegado.swift
//  tron_interfaz
//
//  Created by alumno on 9/17/25.
//

import SwiftUI

// PANTALLA / ORGANISMO: La vista principal que ensambla todas las moléculas.
struct InterfazTronLegado: View {
    let colorAzulTron = Color(red: 0.5, green: 0.8, blue: 1.0)

    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)

            HStack(alignment: .top, spacing: 15) {
                
                // Columna Izquierda
                VStack(spacing: 15) {
                    
                    VistaPanel(titulo: "APP CALENDARIO", colorAcento: colorAzulTron) {
                        
                        ModuloCalendario()
                    }
                    
                    VistaPanel(titulo: "FLUJO DE DATOS CORPORATIVOS", colorAcento: colorAzulTron) {
                        VistaGraficoDatos(esOnda: false, color: .cyan)
                    }
                    .frame(maxHeight: 200)

                    VistaPanel(titulo: "DATOS DE ANCHO DE BANDA", colorAcento: colorAzulTron) {
                        VistaGraficoDatos(esOnda: true, color: .cyan)
                    }
                    .frame(maxHeight: 200)
                }
                .frame(maxWidth: 350)

                // Columna Derecha
                VistaPanel(titulo: "GLOBALIZACIÓN ENCOM .NT", colorAcento: colorAzulTron) {
                    ModuloExploradorArchivos()
                }
            }
            .padding()
        }
        .foregroundColor(.white)
    }
}

struct InterfazTronLegado_Previews: PreviewProvider {
    static var previews: some View {
        InterfazTronLegado()
            .preferredColorScheme(.dark)
    }
}
