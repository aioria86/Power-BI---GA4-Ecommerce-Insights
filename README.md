# Análisis de Datos de E-commerce: Google Analytics 4 (GA4)

Este proyecto presenta un análisis profundo de los datos de eventos de la **Google Merchandise Store**, utilizando el dataset oficial de **Google Analytics 4** exportado a BigQuery. El objetivo es transformar datos crudos de eventos en insights accionables sobre el comportamiento del usuario y rendimiento de ventas.

## 📊 Sobre el Proyecto
El análisis se centra en el procesamiento de datos anidados y la creación de un modelo de estrella en Power BI para responder preguntas de negocio como:
- ¿Cuál es el camino de conversión (Customer Journey) más frecuente?
- ¿Cómo impacta el tiempo de interacción (`engagement_time`) en la tasa de conversión?
- Análisis de retención basado en la primera interacción del usuario (`first_touch_timestamp`).

## 🛠️ Tecnologías y Transformaciones
- **Herramienta:** Power BI Desktop.
- **Formato de archivo:** `.pbit` (Plantilla de Power BI para mayor ligereza).
- **ETL (Power Query):** - Conversión de fechas desde formato entero (`YYYYMMDD`) a `Date`.
  - Transformación de Unix Timestamps (microsegundos) a `DateTime` mediante funciones personalizadas.
  - Limpieza de valores nulos y estandarización de fuentes de tráfico (`Source/Medium`).

## 📁 Dataset
Los datos utilizados provienen del dataset público de Kaggle:
👉 [Google Analytics 4 Dataset - Google Merchandise Store](https://www.kaggle.com/datasets/vickavicka/google-analytics-4-dataset-google-merchandise-store)

## 📈 Próximos Pasos
- [ ] Creación de una Tabla de Calendario (DimDate) para Inteligencia de Tiempo.
- [ ] Desarrollo de medidas DAX para KPIs (Bounce Rate, ARPU, Sesiones con interacción).
- [ ] Visualización de embudos de conversión (Checkout Behavior).

---
## 👤 Contacto
**Juan Manuel Pérez García** *Especialista en Big Data y Análisis de Datos*

[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/juan-manuel-p%C3%A9rez-garc%C3%ADa-bigdata/)
