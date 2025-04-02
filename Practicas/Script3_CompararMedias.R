# Sofia del Carmen Platas Martínez
# 2070830
# 02/04/2025

# Comparación de medias Ejercicio 1
# H0 = Los niveles de ansiedad del grupo 1 (araña en mano)son iguales a los del grupo 2 (fotografía en mano)
# Hi = Los niveles de ansiedad del grupo 1 (araña en mano) son diferentes a los del grupo 2 (fotografía en mano)

# gl= generate levels, c= agrupar
grupo <- gl(2, 12, labels = c("Fotografia", "Araña"))
ansiedad <- c(30, 35, 45, 40, 50, 35, 55, 25, 30, 45, 40, 50, 40, 35, 50,
              55, 65, 55, 50, 35, 30, 50, 60, 39)

# data.frame = acomodar en tabla
datos <-  data.frame(grupo, ansiedad)

# mostrar los  primeros 6 datos
head(datos)

png("Ansiedad.png", 
    width = 6, 
    height = 8, 
    units = "in", 
    res = 300)

# ~ = en funcion
boxplot(datos$ansiedad ~ datos$grupo,
        col = "purple",
        xlab = "Grupo",
        ylab = "Nivel de Ansiedad")
dev.off()

boxplot(datos$ansiedad ~ datos$grupo,
        col = "purple",
        xlab = "Grupo",
        ylab = "Nivel de Ansiedad")

#Prueba de normalidad
shapiro.test(datos$ansiedad)
# El valor de p es 0.4977, por lo tanto hay distibución normal

mean(datos$ansiedad)

# tapply para calcular la media por grupo
tapply(datos$ansiedad, datos$grupo, mean)
tapply(datos$ansiedad, datos$grupo, var)

# para revisar la homogeneidad de varianzas se utiliza la siguente función
bartlett.test(datos$ansiedad, datos$grupo)
# La prueba de barlett arroja que las varianzas son iguales
# p value = 0.5795

# Realizar la prueba de t
t.test(datos$ansiedad ~ datos$grupo, var.equal = T)
# pvalue= 0.1068 
# no hay diferencias estadisticas significativas

# Probar si grupo araña es mayor que grupo fotografia
# alternative = "greater"
t.test(datos$ansiedad ~ datos$grupo, var.equal = T,
       alternative = "greater")

t.test(datos$ansiedad ~ datos$grupo, var.equal = T,
       alternative = "less")

