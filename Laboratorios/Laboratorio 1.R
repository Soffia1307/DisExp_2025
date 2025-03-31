300 + 240 + 1527 + 400 + 1500 + 1833
celular <- 300
celular
transporte <- 240
transporte
comestibles <- 1527
comestibles
gimnasio <- 400
gimnasio
alquiler <- 1500
alquiler
otros <- 1833
otros
gastosmensuales <- celular + transporte + comestibles + gimnasio + alquiler + otros
gastosemestral <- gastosmensuales * 5
gastoanual <- gastosmensuales * 10
gastos <- c(celular, transporte, comestibles, gimnasio, alquiler, otros)
barplot(gastos)
sort(gastos)
barplot(sort(gastos))
sort(gastos, decreasing = TRUE)
barplot(sort(gastos, decreasing = TRUE))

