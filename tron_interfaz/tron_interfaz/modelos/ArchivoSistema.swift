//
//  ArchivoSistema.swift
//  tron_interfaz
//
//  Created by alumno on 9/17/25.
//

import SwiftUI
import Foundation

// MODELO: Define qué es un archivo en tu sistema. No tiene nada visual.
struct ArchivoSistema: Identifiable {
    let id = UUID()
    let nombre: String
    let nombreIcono: String
    let color: Color
}
