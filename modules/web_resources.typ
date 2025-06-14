#import "@preview/prequery:0.1.0"

// Configuración predeterminada
#let config = (
  // Directorio predeterminado para guardar las imágenes
  assets_dir: "assets/",  // Cambiado para usar una ruta relativa a la raíz del proyecto
  relative_assets_dir: "/assets/",                     // 
  // Opción para forzar la emisión de URLs aunque haya sandbox
  fallback: true  // Cambiado a true por defecto para forzar la emisión de URL
)

/// Obtiene un nombre de archivo a partir de la URL
///
/// - url (string): La URL de la imagen
/// -> string: Nombre de archivo extraído de la URL
#let get-filename-from-url(url) = {
  // Obtener la última parte de la URL después de la última barra
  let parts = url.split("/")
  let filename = parts.at(-1)
  
  // Si hay parámetros de consulta, eliminarlos
  if filename.contains("?") {
    filename = filename.split("?").at(0)
  }
  
  return filename
}

/// Descarga una imagen desde una URL y la guarda localmente para
/// poder usarla con el módulo image nativo de Typst.
///
/// - url (string): La URL de la imagen a descargar
/// - local_path (string, none): La ruta local donde guardar la imagen (opcional)
/// - fallback (boolean): Si es true, siempre emite URLs aunque haya sandbox (opcional)
/// -> string: Devuelve la ruta local donde se guardó la imagen
#let download-image(url, local_path: none, fallback: none) = {
  // Usar la configuración predeterminada si no se especifica un valor
  let use_fallback = if fallback == none { config.fallback } else { fallback }
  
  if use_fallback {
    prequery.fallback.update(true)
  }
  
  // Si no se proporciona una ruta local, construir una basada en la URL
  let path = if local_path == none {
    let filename = get-filename-from-url(url)
    config.assets_dir + filename
  } else {
    local_path
  }
  
  // Usar prequery para descargar la imagen
  prequery.image(url, path)
  
  // Devolver la ruta local para que pueda usarse con image
  return path
}

/// Descarga una imagen desde una URL y la incluye directamente
/// como una imagen en el documento.
///
/// - url (string): La URL de la imagen a descargar
/// - local_path (string, none): La ruta local donde guardar la imagen (opcional)
/// - width (auto, relative length, fraction): Ancho de la imagen (opcional)
/// - height (auto, relative length, fraction): Alto de la imagen (opcional)
/// - fallback (boolean, none): Si es true, siempre emite URLs aunque haya sandbox (opcional)
/// -> content: La imagen insertada en el documento
#let web-image(
  url, 
  local_path: none, 
  width: auto,
  height: auto,
  fallback: none,
  caption: none
) = {
  // Forzar fallback para evitar error al intentar mostrar la imagen antes de descargarla
  let use_fallback = if fallback == none { config.fallback } else { fallback }
  if use_fallback {
    prequery.fallback.update(true)
  }
  
  let path = download-image(url, local_path: local_path, fallback: use_fallback)
  
  // Utilizamos prequery.image directamente en lugar de image
  // Esto garantiza que en modo fallback no intente acceder al archivo local
  if use_fallback {
  prequery.image(url, path, width: width, height: height, fallback: [🖼️ Imagen cargando: #url])
  } else {
    // Intentar usar la imagen local si existe
    let filename = get-filename-from-url(url)
    let name_parts = filename.split(".")
    let get_caption = name_parts.slice(0, name_parts.len() - 1).join(".")
    figure(
    image(config.relative_assets_dir + filename, width: width, height: height),
    caption: if caption == none { [#get_caption] } else { caption },
    supplement: [Figura]
    )
  }
}

/// Descarga múltiples imágenes desde URLs y las guarda localmente.
///
/// - urls (array): Array de URLs o de objetos con claves "url" y opcionalmente "path"
/// - fallback (boolean, none): Si es true, siempre emite URLs aunque haya sandbox (opcional)
/// -> array: Array con las rutas locales donde se guardaron las imágenes
#let batch-download(urls, fallback: none) = {
  // Usar la configuración predeterminada si no se especifica un valor
  let use_fallback = if fallback == none { config.fallback } else { fallback }
  
  if use_fallback {
    prequery.fallback.update(true)
  }
  
  let results = ()
  for item in urls {
    // Comprobar si item es una string (URL) o un objeto {url, path}
    if type(item) == "string" {
      let url = item
      let path = config.assets_dir + get-filename-from-url(url)
      prequery.image(url, path)
      results.push(path)
    } else {
      let url = item.url
      let path = if "path" in item { 
        item.path 
      } else { 
        config.assets_dir + get-filename-from-url(url) 
      }
      prequery.image(url, path)
      results.push(path)
    }
  }
  
  return results
}

/// Cambia la configuración del módulo
///
/// - new_config (dictionary): Nuevos valores de configuración
/// -> none
#let configure(new_config) = {
  config = config + new_config
}

/// Muestra instrucciones para ejecutar el comando de descarga
/// Esta función solo genera texto informativo
///
/// - file_path (string): Ruta del archivo Typst actual (opcional)
/// -> none
#let show-download-command(file_path: none) = {
  let current_file = if file_path == none {
    "tu-archivo.typ"
  } else {
    file_path
  }
  
  [
    #block(
      width: 100%,
      fill: rgb(240, 240, 250),
      inset: 1em,
      radius: 4pt,
      [
        Para descargar las imágenes necesarias, ejecuta uno de estos comandos:

        *Usando el script auxiliar (recomendado):*
        ```
        python modules/web_resources_helper.py #current_file
        ```

        *O manualmente:*
        ```
        typst query --root . --input prequery-fallback=true --field value #current_file "<web-resource>" | python modules/web_resources.py
        ```
        
        Asegúrate de ejecutar el comando desde la carpeta raíz del proyecto.
      ]
    )
  ]
}