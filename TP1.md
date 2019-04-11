---
title: "Tp1_Orga"
author: "yo"
date: "9 de abril de 2019"
output: html_document
---

Se espera un análisis exploratorio de 4 datasets. Filminas de Jammp <http://bit.ly/2Gcxp71>

## Instalo paquetes en R

```{r setup, include = FALSE}
knitr::opts_chunk$set(echo = TRUE)

library(ggplot2) #graficar
library(dplyr) #limpieza de datos
library(lubridate) #fechas
library(data.table)
#install.packages("data.table")
```

## ¿Cuáles son mis datasets?
### Datos Transaccionales
* auctions - Subastas

### Datos Orgánicos
Datos producidos por los usuarios
* clicks 
* installs - Instalaciones de la app
* events - Eventos

## Leo todos los dataframes en R

```{r read all dataframes, include=FALSE}

installs <- fread(paste(readLines(gzfile("installs.csv.gzip")), collapse = "\n"))

clicks <- fread(paste(readLines(gzfile("clicks.csv.gzip")), collapse = "\n"))

events <- fread(paste(readLines(gzfile("events.csv.gzip")), collapse = "\n"))

auctions <- fread(paste(readLines(gzfile("auctions.csv.gzip")), collapse = "\n"))

target <- read.csv("target_competencia.csv")
```

## Clicks
```
ggplot(clicks_full, aes(x = advertiser_id, y = carrier_id, fill = timeToClick))+
  geom_raster()+
  theme_minimal()

library(scales)
ggplot(clicks_full, aes(x = horas, y = timeToClick))+ 
  geom_point(alpha = 0.3, colour = "blue")+ 
  scale_x_datetime(labels=date_format("%H"),
                   breaks = date_breaks("6 hour"),
                   minor_breaks=date_breaks("3 hour"))+
  theme_minimal() 
  
  
ggplot(clicks, aes(x = latitude, y = longitude))+
  geom_point()+
  theme_minimal()  
  
  unique_auct <- auctions %>%
  summarise_all(funs(n_distinct))
  
 ```

 > unique_auct
  auction_type_id country     date device_id platform ref_type_id
1               1       1 19570963    206977        2           2
  source_id
1         5

## Installs

## Events

## Auctions
