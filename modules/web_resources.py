#!/usr/bin/env python
import sys, json
import os
from urllib.request import urlretrieve
from pathlib import Path
import traceback

# Crear una función para manejar errores
def download_with_error_handling(url, path):
    try:
        # Asegúrate de que exista el directorio
        path_obj = Path(path)
        path_obj.parent.mkdir(parents=True, exist_ok=True)
        
        # Verificar permisos de escritura
        if not os.access(path_obj.parent, os.W_OK):
            print(f"¡ADVERTENCIA! No tienes permisos de escritura en {path_obj.parent}")
        
        # Intentar descargar el archivo - Eliminando caracteres especiales
        print(f"Intentando descargar {url} -> {path}")
        urlretrieve(url, path)
        
        # Verificar que el archivo se haya creado
        if not path_obj.exists():
            print(f"¡ERROR! El archivo no se creó en {path}")
            return False
        
        print(f"✓ Descarga exitosa: {path}")
        return True
    except Exception as e:
        print(f"¡ERROR al descargar {url}!")
        print(f"Mensaje de error: {str(e)}")
        print(f"Ruta de destino: {path}")
        # Evitar imprimir el traceback completo para evitar problemas de codificación
        print(f"Tipo de error: {type(e).__name__}")
        return False

# Función principal
def main():
    try:
        # Configurar codificación UTF-8 para salida
        # Nota: esto podría no funcionar en todas las versiones de Windows
        if sys.stdout.encoding != 'utf-8':
            try:
                # Intentar cambiar la codificación si es necesario y posible
                import io
                sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding='utf-8', errors='replace')
            except Exception:
                # Si no se puede cambiar, continuamos con la codificación actual
                pass
                
        # Leer el JSON desde stdin
        print("Leyendo datos de recursos web...")
        resources = json.load(sys.stdin)
        
        print(f"Se encontraron {len(resources)} recursos para descargar.")
        
        # Crear un directorio de assets si no existe
        assets_dir = Path("assets")
        assets_dir.mkdir(exist_ok=True)
        
        success_count = 0
        for res in resources:
            url = res["url"]
            path = res["path"]
            
            print(f"\nProcesando recurso: {url}")
            if download_with_error_handling(url, path):
                success_count += 1
        
        print(f"\nResumen: {success_count} de {len(resources)} recursos descargados exitosamente.")
        
        if success_count < len(resources):
            sys.exit(1)
    except Exception as e:
        print(f"Error inesperado: {str(e)}")
        # Usar una versión simplificada para evitar problemas de codificación
        print(f"Tipo de error: {type(e).__name__}")
        sys.exit(1)

if __name__ == "__main__":
    main()