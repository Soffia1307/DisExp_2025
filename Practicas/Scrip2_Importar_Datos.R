# Sofia del Carmen Platas Martinez
# 2070830
#31/03/2025


# read.csv importar datos de excel
trees <- read.csv("practica2.csv", header=T)

#as.factor cambiar caracteres a factores (variables)
trees$Species <- as.factor(trees$Species)
trees$Crown <- as.factor(trees$Crown)

#Grafica Boxplot (media, rango, cuartiles, valores atipicos)
boxplot(trees$Diameter ~ trees$Species, 
        xlab = "Especies", # nombre del eje x
        ylab = "DBH", # nombre del eje y
        col = "violet", # cambiar color de grafica
        main = "Inventario", # Titulo de la grafica
        ylim = c(5,25)) # ampliar rango del eje y

boxplot(trees$Height ~ trees$Species,
        xlab = "Especies",
        ylab = "Altura (m)",
        main = "Inventario",
        col = "lightblue",
        ylim = c(5,25))
#histograma de altura
hist(trees$Height,
     xlab = "Altura (m)",
     ylab = "Frecuencia",
     main = "Categorias de Altura")

#diagrama de tallo y hoja
stem(trees$Height)
