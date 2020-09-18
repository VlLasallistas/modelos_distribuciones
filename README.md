---
output:
  pdf_document: default
  html_document: default
---
# Contenidos
1. Reproducibilidad (git)
2. Proceso de modelaje
3. Probabilidad en R
4. Distribuciones

# 1. Reproducibilidad  y Documentación

## 1.1 Herramientas (git)
Cómo mantener el código del proyecto al día y bajo resguardo.

Desde RStudio:
- nuevo proyecto
- control de versiones (git)
- direccion: https://github.com/chenHub00/modelos_distribuciones.git
- instalación de git: https://git-scm.com/download/win
- configurar git (alternativas): 
    - https://www.atlassian.com/es/git/tutorials/install-git#windows
    - https://docs.github.com/es/github/getting-started-with-github/set-up-git
    - http://kbroman.org/github_tutorial/pages/first_time.html


Establecer un directorio. 
```sh
$ git clone https://github.com/chenHub00/modelos_distribuciones.git

```

## 1.2 Herramientas (markdown)

https://www.markdownguide.org/basic-syntax/
https://bookdown.org/yihui/rmarkdown/


## 1.3 Organización de la preparación de  datos


Referencias:


# 2. Proceso de modelaje
En qué consiste el proceso de modelaje: características y ejemplos.

## No paramétricos
¿Cómo usar datos para:

* Estimación de momentos, cuantiles y distribuciones (sin referir una distribución paramétrica)

* Gráficas resumen

* Identificar medidas para resumir las desviaciones de un ajuste no paramétrico, respecto de uno paramétrico

* Uso de estimadores no paramétricos para aproximar paramétros (usado para empezar la busqueda de un proceimiento paramétrico)

### A. 
Dos estrategias para aproximar medidas resumen (promediso, varianzas, cuantiles/percentiles, etc.). Paramétrica:

1. asumir una distribución
2. estimar los parámetros de dicha distribución
3. usar la distribución con los parametros estimados para el cálculo de las medidas resumen.

Muestreo simple:
1. Variables Aleatorias Independientes,
2. Independientes e Identicamente distribuidas
de una distribución depoblacional desconocida F().

Algunos estimadores no paramétricos 
#### Momentos
Definición.

K-ésimo momento.

Primer momento.

K-ésimo momento central.

Segundo momento central.

Insesgado.


#### Función de Distribución Empírica
Para una función conocida g(.), se estima E(g(X)) =  
Para la función indicadora g(X) = I(X<=x) para x fijo.
Distribución Bernoulli. El valor esperado es la función de distribución evaluado en x.
Principio de analogía. 
El estimador no parametrico de la función de distribución, también llamado función de distribución acumulada empírica. 

```{r, eval=do_it}

(xExample <- c(10,rep(15,3),20,rep(23,4),30))

PercentilesxExample <- ecdf(xExample)

plot(PercentilesxExample, main="",xlab="x")

```
#### Cuartiles, Percentiles y cuantiles
1er cuartil.
3er cuartil.
Generalizando: dada una función de distribución F(.), 0 < q < 1, se define qF tal que F(qF) = q. Esto incluye a la mediana, los cuartiles y los percentiles.

De forma precisa: el cuantil q-ésimo qF es cualguier número que satisface:

F(qF-) <= q <= F(qF)
F(x-): evaluada por el límite desde la izquierda.

Ejemplos:


### B.  Tools for Model Selection and Diagnostics



## Referencias
https://fac.ksu.edu.sa/sites/default/files/loss_models_part1.pdf
https://openacttexts.github.io/Loss-Data-Analytics/C-ModelSelection.html

# 3. Probabilidad en R

# 4. Distribuciones

# 5. Estad'istica matem'atica

# 6. Selecci'on de modelos

## 
