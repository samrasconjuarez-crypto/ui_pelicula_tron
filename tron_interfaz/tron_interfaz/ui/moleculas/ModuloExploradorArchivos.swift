//
//  ModuloExploradorArchivos.swift
//  tron_interfaz
//
//  Created by alumno on 9/17/25.
//

import SwiftUI

// MOLÉCULA: El explorador de archivos, hecho de átomos "VistaCarpeta".
struct ModuloExploradorArchivos: View {
    private let columnas = Array(repeating: GridItem(.flexible()), count: 1) // Ajustado a 4 para que se vea mejor
    
    // ✅ CAMBIADO: Añadimos un color específico para cada archivo.
    private let archivos = [
        ArchivoSistema(nombre: "BIBLIOTECA", nombreIcono: "folder.fill", color: .cyan),
        ArchivoSistema(nombre: "USUARIOS", nombreIcono: "folder.fill", color: .cyan),
        ArchivoSistema(nombre: "SISTEMA", nombreIcono: "folder.fill", color: .cyan),
        ArchivoSistema(nombre: "ENCOM_OS", nombreIcono: "folder.fill", color: .cyan),
        
        //Itzel Chavez Romero: agregue nuevos archivos
        ArchivoSistema(nombre: "TRON_EXE.ZIP", nombreIcono: "zipper.page", color: .cyan),
        ArchivoSistema(nombre: "CLUE.EXE", nombreIcono: "exclamationmark.triangle.fill", color: .orange),
    ]

    var body: some View {
        LazyVGrid(columns: columnas, spacing: 20) {
            ForEach(archivos) { archivo in
                // ✅ CAMBIADO: Ahora le pasamos el nombre Y el color a la VistaCarpeta.
                VistaCarpeta(nombre: archivo.nombre, color: archivo.color, nombreIcono: archivo.nombreIcono)
            }
        }
    }
}
