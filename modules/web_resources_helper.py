#!/usr/bin/env python
import sys
import os
import subprocess
import json
from pathlib import Path

def find_typst_project_root(file_path):
    """Encuentra el directorio adecuado para usar como raíz del proyecto"""
    # Para este caso, usamos el directorio principal del proyecto (donde se ejecuta el script)
    return Path(os.getcwd())

def run_image_download(typst_file):
    """Ejecuta el proceso de descarga de imágenes para un archivo Typst"""
    # Resolver la ruta absoluta del archivo Typst
    typst_path = Path(typst_file)
    if not typst_path.is_absolute():
        typst_path = Path(os.getcwd()) / typst_path
    
    # Asegurarse de que el archivo existe
    if not typst_path.exists():
        print(f"Error: No se encontró el archivo {typst_path}")
        return False
    
    # Usar el directorio donde se ejecuta el script como raíz del proyecto
    project_root = find_typst_project_root(typst_path)
    
    # Crear una ruta relativa desde el directorio raíz al archivo
    try:
        relative_file_path = typst_path.relative_to(project_root)
    except ValueError:
        # Si no se puede crear una ruta relativa, usar la ruta completa
        print(f"Advertencia: No se pudo crear una ruta relativa desde {project_root} a {typst_path}")
        relative_file_path = typst_path
    
    print(f"Archivo: {relative_file_path}")
    
    # Preparar el comando con --root
    query_cmd = ["typst", "query", 
                 "--root", str(project_root),
                 "--input", "prequery-fallback=true", 
                 "--field", "value", 
                 str(relative_file_path), "<web-resource>"]
    
    # Cambiar al directorio del archivo antes de ejecutar
    original_dir = os.getcwd()
    os.chdir(project_root)
    
    try:
        # Ejecutar el comando typst query y capturar la salida
        print(f"Ejecutando desde {project_root}:")
        print(f"Comando: {' '.join(query_cmd)}")
        query_result = subprocess.run(query_cmd, capture_output=True, text=True)
        
        if query_result.returncode != 0:
            print(f"Error al ejecutar typst query: {query_result.stderr}")
            return False
        
        if not query_result.stdout.strip():
            print("No se encontraron recursos web para descargar.")
            return True
        
        # Pasar la salida al script web_resources.py
        web_resources_path = project_root / "modules" / "web_resources.py"
        
        if not web_resources_path.exists():
            print(f"No se encontró el script web_resources.py en {web_resources_path}")
            print(f"Asegúrate de crear la carpeta 'modules' dentro de {project_root}")
            print(f"y colocar ahí el archivo web_resources.py")
            return False
        
        print(f"Pasando datos a: {web_resources_path}")
        download_cmd = [sys.executable, str(web_resources_path)]
        download_result = subprocess.run(download_cmd, input=query_result.stdout, 
                                         text=True, capture_output=True)
        
        # Mostrar resultado de la descarga
        print(download_result.stdout)
        if download_result.returncode != 0:
            print(f"Error al descargar recursos: {download_result.stderr}")
            return False
        
        return True
    
    finally:
        # Volver al directorio original
        os.chdir(original_dir)

def main():
    if len(sys.argv) < 2:
        print("Uso: python web_resources_helper.py <archivo.typ> [<archivo2.typ> ...]")
        sys.exit(1)
    
    success = True
    for typst_file in sys.argv[1:]:
        print(f"\nProcesando archivo: {typst_file}")
        if not run_image_download(typst_file):
            success = False
    
    sys.exit(0 if success else 1)

if __name__ == "__main__":
    main()