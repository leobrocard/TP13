#le code et les données proviennent des exercices sur R du début du semestre,
#j'ai juste ajouté des trucs pour rendre le graph un peu plus complexe

# vecteurs
t <- 10
vt <- c(10)
b <- 1000
vb <- c(1000)

# Boucle
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

#tendances supérieurs et inférieurs
vb_up <- vb * 1.1
vb_down <- vb * 0.9


plot(vt, vb, 
     type = "o",
     col = "blue",
     xlab = "Temps",
     ylab = "Population de bactéries",
     main = "Population de bactéries en fonction du temps")
lines(vt, vb_up,
      type = "o",
      col = "red")
lines(vt,
      vb_down,
      type = "o", col = "green")

# légende
legend("topright",
       legend = c("Valeurs réelles", "10% supérieur", "10% inférieur"),
       col = c("blue", "red", "green"),
       lty = 1, pch = 1)
