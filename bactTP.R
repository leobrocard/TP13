# Initialisation des vecteurs
t <- 10
vt <- c(10)
b <- 1000
vb <- c(1000)

# Boucle pour calculer les températures et les données de population des bactéries
for (i in 1:30) {
  t <- t + 1
  vt <- c(vt, t)
  if (t >= 16 & t <= 25) {
    b <- b * 1.3
  } else {
    b <- b * 0.8
  }
  vb <- c(vb, b)
}

# Calcul des courbes supérieures et inférieures
vb_upper <- vb * 1.1
vb_lower <- vb * 0.9


plot(vt, vb, type = "o", col = "blue", xlab = "Temps", ylab = "Population de bactéries", main = "Population de bactéries en fonction du temps")
lines(vt, vb_upper, type = "o", col = "red")
lines(vt, vb_lower, type = "o", col = "green")

# légende
legend("topright", legend = c("Valeurs réelles", "10% supérieur", "10% inférieur"), col = c("blue", "red", "green"), lty = 1, pch = 1)
