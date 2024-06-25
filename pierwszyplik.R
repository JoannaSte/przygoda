library(tidyverse)
x <-sample(letters,2)
x
y<-sample(letters, 5)
y
dane<-
  tibble(id=seq(1,40,1),
         nazwa= rep(x,20),
         kategoria= rep(y,8),
         wzrost = runif(40, 140, 191),
         waga = runif(40, 40, 111),
         plec = rep(c(TRUE,FALSE),20),
         data=sample(seq(as.Date('1980/01/01'), as.Date('2000/01/01'), by="day"),40))

waga = runif(40, 40, 111)
waga


#--------------------------------
id <- 1:40

nazwa <- rep(letters[1:2], 40 / 2)

kategoria <-
  paste0("kat_", LETTERS[1:5]) |> sample(size = 40, replace = T)

wzrost <- 140:190 |> sample(size = 40)

waga <- c(seq(40, 110, length.out = 35),
          rep(NA, 5))

plec <- c(T, F) |> sample(size = 40, replace = T)

a <- as.POSIXct("1980-01-01 00:00", tz = "GMT")
b <- as.POSIXct("2000-01-01 00:00", tz = "GMT")

date <- seq.POSIXt(a, b, length.out = 40)


dane <- data.frame(id, nazwa, kategoria, wzrost,waga,  plec, date)

dane <- dane |> as_tibble()

podstaw <- mean(dane$waga) + sd(dane$nazwa)

dane$waga[dane$waga == NA] <- podsta