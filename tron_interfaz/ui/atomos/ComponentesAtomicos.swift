//
//  ComponentesAtomicos.swift
//  tron_interfaz
//
//  Created by alumno on 9/17/25.
//
import SwiftUI

    
struct CeldaDeRejilla: View {
    // En lugar de una opacidad, ahora recibe un color completo.
    let color: Color
    
    var body: some View {
        Rectangle()
            // Usa directamente el color que recibe.
            .fill(color)
            .frame(height: 15)
            .cornerRadius(2)
    }
}

// ÁTOMO: Un ícono de carpeta con su nombre.
struct VistaCarpeta: View {
    let nombre: String
    let color: Color // ✅ AÑADIDO: La propiedad para recibir el color.
    
    //Itzel Chavez Romero: nueva variable para poder agregar cualquier tipo de icono
    let nombreIcono: String
    
    var body: some View {
        VStack {
            //Itzel Chavez Romero: cambio de variable aqui para poder usar la propiedad
            Image(systemName: nombreIcono)
                .font(.system(size: 40))
                // ✅ CAMBIADO: En lugar de un color fijo, usamos la propiedad 'color'.
                .foregroundColor(color)
            
            Text(nombre)
                .font(.custom("Menlo", size: 12))
        }
    }
}
