```typst
#import "../modules/web_resources.typ": *

// Ejemplo: Esto mostrará un placeholder hasta que descargues las imágenes
#web-image("https://en.wikipedia.org/static/images/icons/wikipedia.png", width: 50pt, caption: "Pie de imagen")

```

```pwsh
PS C:\Users\Jerson\Documents\typst> python modules/web_resources_helper.py CPP1_Ruiz_Alva\tu_archivo.typ
```

```typst
// Una vez descargadas las imágenes, puedes usar el siguiente código para mostrarlas
#web-image("https://en.wikipedia.org/static/images/icons/wikipedia.png", width: 500pt, fallback: false, caption: "Pie de imagen")

#web-image("assets/Timeline.png", width: 500pt, fallback: false, caption: "Pie de imagen")
```
