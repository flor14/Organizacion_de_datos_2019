---
title: "Tp1_Orga"
author: "yo"
date: "9 de abril de 2019"
output: html_document
---

# Instalo paquetes en R

```{r setup, include = FALSE}
knitr::opts_chunk$set(echo = TRUE)

library(ggplot2) #graficar
library(dplyr) #limpieza de datos
library(lubridate) #fechas
library(data.table)
#install.packages("data.table")
```
## Jammp

Se espera un análisis exploratorio de 4 datasets

Filminas de Jammp <http://bit.ly/2Gcxp71>

### Datos Transaccionales
* auctions - Subastas

### Datos Orgánicos
Datos producidos por los usuarios
* clicks 

* installs - Instalaciones de la app
* events - Eventos

1. Leo todos los dataframes en R

```{r read all dataframes, include=FALSE}

installs <- fread(paste(readLines(gzfile("installs.csv.gzip")), collapse = "\n"))

clicks <- fread(paste(readLines(gzfile("clicks.csv.gzip")), collapse = "\n"))

events <- fread(paste(readLines(gzfile("events.csv.gzip")), collapse = "\n"))

auctions <- fread(paste(readLines(gzfile("auctions.csv.gzip")), collapse = "\n"))

target <- read.csv("target_competencia.csv")
```
