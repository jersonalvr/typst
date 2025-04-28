```typst
#import "../modules/web_resources.typ": *

// Ejemplo 1: Esto mostrará un placeholder hasta que descargues las imágenes
#web-image("https://en.wikipedia.org/static/images/icons/wikipedia.png", width: 50pt)

#web-image("https://en.wikipedia.org/static/images/icons/wikipedia.png", width: 500pt, fallback: false)

#web-image("assets/Timeline.png", width: 500pt, fallback: false)
```