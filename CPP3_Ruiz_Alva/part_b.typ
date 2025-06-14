= Propuesta conceptual de un sistema de IA judicial <conceptual>

== Diagrama conceptual del sistema <diagrama>

#import "@preview/pintorita:0.1.4" as pintorita

#rect(
  fill: rgb("#edf4ff"),
  stroke: 2pt + rgb("#4169e1"),
  radius: 8pt,
  width: 100%
)[
  #align(center)[
    #text(size: 14pt, weight: "bold")[
      Sistema de Predicción de Reincidencia
    ]
    
    #v(10pt)
    
    #pintorita.render(
      ```
      activityDiagram
        start
        :Ingreso de datos judiciales;
        :Preprocesamiento y entrenamiento del modelo;
        if (¿Alta probabilidad de reincidencia?) then
          :Alerta al juez;
        else
          :Informe de bajo riesgo;
        endif
        end
      ```.text,
      style: "larkLight",
      font: "Century Gothic"
    )
  ]
]

== Modelos y frameworks propuestos <modelos>

Para esta aplicación se sugiere el uso de modelos de aprendizaje supervisado como Random Forest, Gradient Boosting o redes neuronales. Estos modelos permiten clasificar con precisión el riesgo de reincidencia. Adicionalmente, se recomienda el uso de explicadores como SHAP o LIME para garantizar la interpretabilidad.

El sistema puede ser desarrollado con:

- *scikit-learn:* para modelos clásicos como regresión logística, árboles y ensambles.
- *TensorFlow / PyTorch:* para redes neuronales profundas.
- *HuggingFace Transformers:* si se desea analizar textos judiciales (sentencias, dictámenes) con modelos como BERT.
- *Pandas + Numpy:* para la gestión y transformación de datos judiciales.

La implementación debe considerar pipelines de preprocesamiento, validación cruzada, balanceo de clases y visualización de métricas.

== Canvas de IA <canvas>

#figure(
  text(size: 11pt)[
  #table(
    columns: (3cm, 12cm),
    table.header([*Cuadrante*], [*Contenido*]),
    [Problema], [Reducir errores judiciales mediante predicción de reincidencia.],
    [Datos], [Historial penal, edad, género, situación laboral, educación, adicciones.],
    [Modelo], [Random Forest con validación cruzada y explicación con SHAP.],
    [Salida], [Score de riesgo (0 a 1) con justificación textual por variable clave.],
    [Acción], [Juez puede ajustar medidas cautelares, incluir intervención social.],
    [Impacto], [Prevención del crimen, reducción de prisión preventiva injusta, mayor eficiencia.]
  )],
  caption: [Canvas del proyecto de IA para justicia predictiva.]
) <canvas-ia>
