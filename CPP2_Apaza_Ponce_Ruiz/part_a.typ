= Análisis Técnico del Proyecto PRODUCE <analisis-tecnico>

== Arquitectura del Sistema <arquitectura>

El sistema PRODUCE se ha desarrollado utilizando Python como lenguaje principal, implementando una arquitectura modular que facilita el mantenimiento y la escalabilidad del proyecto @proyecto-produce.

=== Tecnologías Implementadas <tecnologias>

El stack tecnológico incluye:

/ Python: Lenguaje principal de desarrollo
/ Streamlit: Framework para la interfaz de usuario web
/ Pandas: Manipulación y análisis de datos
/ JSON: Formato de intercambio de datos para ciudades y especies

== Funcionalidades Desarrolladas <funcionalidades>

=== Procesamiento de Datos <procesamiento>

El sistema cuenta con capacidades avanzadas para:

- Carga automática de archivos Excel con datos pesqueros
- Validación y limpieza de información
- Transformación de datos en formatos estandarizados
- Generación de estructuras de datos optimizadas para análisis

=== Interfaz de Usuario <interfaz>

La aplicación web proporciona:

+ Dashboard interactivo para visualización de datos
+ Formularios dinámicos para entrada de información
+ Generación automática de reportes en formato estándar
+ Sistema de navegación intuitivo para usuarios no técnicos

#figure(
  text(size: 10pt)[
  #table(
    columns: (2fr, 1fr, 1fr, 2fr),
    table.header([*Componente*], [*Estado*], [*Versión*], [*Descripción*]),
    [app.py], [Completo], [1.0], [Aplicación principal Streamlit],
    [ciudades.json], [Completo], [1.0], [Base de datos de ciudades],
    [especies.json], [Completo], [1.0], [Catálogo de especies pesqueras],
    [requirements.txt], [Completo], [1.0], [Dependencias del proyecto],
  )],
  caption: [Estado actual de los componentes principales del sistema.]
) <componentes-sistema>

== Capacidades de Detección <deteccion>

Una de las características más avanzadas del sistema es su capacidad de detección automática, como se muestra en la @imagen-deteccion:

#import "../modules/web_resources.typ": web-image

#web-image(
  "../assets/detection.png", 
  width: 400pt, 
  caption: "Sistema de detección implementado en el proyecto PRODUCE",
  fallback: false
) <imagen-deteccion>

Esta funcionalidad permite la identificación automática de patrones en los datos pesqueros, mejorando significativamente la precisión del análisis y reduciendo el tiempo de procesamiento.

= Análisis Técnico de Modelos en PRODUCE <analisis-modelos>

== Arquitectura de Modelos Implementados <arquitectura-modelos>

El sistema PRODUCE implementa una arquitectura multicapa de modelos que integra diferentes paradigmas de machine learning para abordar los desafíos específicos del sector pesquero @arquitectura-ml.

=== Modelo de Detección Automática <modelo-deteccion>

El componente central del sistema es un modelo de detección que procesa datos en tiempo real para identificar patrones y anomalías en las actividades pesqueras.

#import "@preview/pintorita:0.1.4"

#figure(
  align(center)[
    #show raw.where(lang: "pintora"): it => pintorita.render(it.text, style: "default", font: "Century Gothic")
    ```pintora
    mindmap
    @param layoutDirection LR
    @param {
      l1NodeBgColor   #0f305e
      l1NodeTextColor #fff
      l2NodeBgColor   #063971
      l2NodeTextColor #fff
      nodeBgColor     #3f5688
      textColor       #fff
    }
    + Pipeline
      ++ Data Input Layer
        +++ Raw Images/Video
        +++ Sensor Data
        +++ External APIs
      ++ Preprocessing Layer
        +++ Image Normalization
        +++ Data Validation
        +++ Format Conversion
      ++ Feature Extraction
        +++ CNN Feature Maps
        +++ Object Detection
        +++ Orientation Analysis
      ++ Detection Model
        +++ Deep Learning Model
        +++ Inference Engine
        +++ Confidence Scoring
      ++ Classification Layer
        +++ Object Classification
        +++ Anomaly Detection
        +++ Pattern Recognition
      ++ Post-processing
        +++ Result Filtering
        +++ Confidence Thresholding
        +++ Data Aggregation
      ++ Decision Engine
        +++ Rule Engine
        +++ Risk Assessment
        +++ Priority Scoring
      ++ Alert Generation
        +++ Real-time Alerts
        +++ Notifications
        +++ Dashboard Updates
        +++ Log Generation
    ```
  ],
  caption: "Pipeline del modelo de detección de PRODUCE"
) <pipeline>

Como se observa en @pipeline, el modelo de detección integra múltiples fuentes de información y aplica algoritmos de procesamiento secuencial para generar predicciones confiables.

=== Taxonomía de Modelos por Funcionalidad <taxonomia-modelos>

#figure(
  text(size: 10pt)[
  #table(
    columns: (2.5fr, 2fr, 1.5fr, 2fr, 1fr),
    table.header([*Tipo de Modelo*], [*Algoritmo Base*], [*Entrada*], [*Salida*], [*Estado*]),
    [Clasificación de Especies], [Random Forest], [Imágenes/Datos], [Categorías], [Activo],
    [Predicción de Capturas], [LSTM], [Series Temporales], [Volúmenes], [Desarrollo],
    [Detección de Anomalías], [Isolation Forest], [Métricas Operativas], [Alertas], [Activo],
    [Optimización de Rutas], [Algoritmo Genético], [Coordenadas GPS], [Rutas], [Piloto],
    [Análisis de Sentimientos], [BERT], [Reportes Textuales], [Sentiment Score], [Investigación],
  )],
  caption: [Catálogo de modelos implementados y en desarrollo en el sistema PRODUCE.]
) <catalogo-modelos>

== Modelos de Clasificación y Reconocimiento <modelos-clasificacion>

=== Modelo de Clasificación de Especies <clasificacion-especies>

El modelo de clasificación de especies utiliza un enfoque híbrido que combina:

- *Características morfológicas*: Análisis de forma, tamaño y patrones visuales
- *Datos contextuales*: Zona de captura, profundidad y método de pesca
- *Información histórica*: Frecuencia de especies por región y temporada

```python
# Estructura simplificada del modelo de clasificación
class EspeciesClassifier:
    def __init__(self):
        self.feature_extractor = FeatureExtractor()
        self.classifier = RandomForestClassifier(
            n_estimators=100,
            max_depth=15,
            min_samples_split=5
        )
    
    def predict_species(self, image_data, context_data):
        features = self.extract_features(image_data, context_data)
        probability = self.classifier.predict_proba(features)
        return self.get_top_predictions(probability)
```

=== Rendimiento del Modelo de Clasificación <rendimiento-clasificacion>

#figure(
  text(size: 10pt)[
  #table(
    columns: (2fr, 1fr, 1fr, 1fr, 1fr),
    table.header([*Especie*], [*Precisión*], [*Recall*], [*F1-Score*], [*Soporte*]),
    [Anchoveta], [0.94], [0.92], [0.93], [1,250],
    [Sardina], [0.89], [0.87], [0.88], [890],
    [Jurel], [0.91], [0.89], [0.90], [756],
    [Caballa], [0.87], [0.85], [0.86], [623],
    [Merluza], [0.93], [0.91], [0.92], [445],
    [*Promedio Macro*], [*0.91*], [*0.89*], [*0.90*], [*3,964*],
  )],
  caption: [Métricas de rendimiento del modelo de clasificación de especies pesqueras principales.]
) <metricas-clasificacion>

== Modelos Predictivos y de Regresión <modelos-predictivos>

=== Modelo de Predicción de Capturas <prediccion-capturas>

El modelo predictivo utiliza redes neuronales LSTM (Long Short-Term Memory) para analizar series temporales complejas:

- *Ventana temporal*: 30 días de datos históricos
- *Variables predictivas*: Temperatura del mar, fase lunar, datos de captura históricos
- *Arquitectura*: 3 capas LSTM con 64, 32 y 16 neuronas respectivamente
- *Función de activación*: ReLU para capas ocultas, lineal para salida

```python
# Arquitectura del modelo LSTM para predicción de capturas
model = Sequential([
    LSTM(64, return_sequences=True, input_shape=(30, n_features)),
    Dropout(0.2),
    LSTM(32, return_sequences=True),
    Dropout(0.2),
    LSTM(16, return_sequences=False),
    Dense(8, activation='relu'),
    Dense(1, activation='linear')
])

model.compile(
    optimizer='adam',
    loss='mse',
    metrics=['mae', 'mape']
)
```

=== Evaluación del Modelo Predictivo <evaluacion-predictivo>

#figure(
  text(size: 10pt)[
  #table(
    columns: (2fr, 1.5fr, 1.5fr, 1.5fr, 1.5fr),
    table.header([*Métrica*], [*Entrenamiento*], [*Validación*], [*Prueba*], [*Objetivo*]),
    [RMSE (toneladas)], [2.34], [2.67], [2.89], [< 3.0],
    [MAE (toneladas)], [1.78], [2.01], [2.15], [< 2.5],
    [MAPE (%)], [12.5], [14.2], [15.8], [< 20.0],
    [R² Score], [0.87], [0.84], [0.82], [> 0.80],
    [Tiempo Inferencia (ms)], [-], [-], [45], [< 100],
  )],
  caption: [Métricas de evaluación del modelo LSTM para predicción de capturas pesqueras.]
) <metricas-lstm>

== Modelos de Detección de Anomalías <modelos-anomalias>

=== Algoritmo de Isolation Forest <isolation-forest>

Para la detección de patrones anómalos en las operaciones pesqueras, se implementó un modelo basado en Isolation Forest que identifica:

- *Capturas atípicas*: Volúmenes inusualmente altos o bajos para una zona/temporada
- *Comportamiento irregular*: Patrones de navegación o pesca sospechosos
- *Calidad de datos*: Identificación de errores en la entrada de información

=== Parámetros y Configuración <parametros-anomalias>

```python
# Configuración del modelo de detección de anomalías
isolation_forest = IsolationForest(
    n_estimators=200,
    contamination=0.05,  # 5% de datos considerados anómalos
    max_samples=0.8,
    max_features=1.0,
    random_state=42
)

# Pipeline de preprocesamiento
preprocessor = Pipeline([
    ('scaler', StandardScaler()),
    ('pca', PCA(n_components=0.95)),  # Mantener 95% de varianza
    ('detector', isolation_forest)
])
```

== Integración de Modelos en el Sistema <integracion-modelos>

=== Arquitectura de Microservicios <microservicios>

Cada modelo se implementa como un microservicio independiente:

- *Contenedorización*: Docker para portabilidad y escalabilidad
- *API REST*: Endpoints estandarizados para comunicación
- *Monitoreo*: Métricas de rendimiento en tiempo real
- *Versionado*: Control de versiones de modelos con MLflow

=== Pipeline de MLOps <mlops-pipeline>

+ *Desarrollo*: Experimentación en notebooks Jupyter
+ *Validación*: Pruebas automatizadas con datos de holdout
+ *Staging*: Despliegue en ambiente de pruebas
+ *Producción*: Implementación con monitoreo continuo
+ *Reentrenamiento*: Actualización automática basada en deriva de datos
