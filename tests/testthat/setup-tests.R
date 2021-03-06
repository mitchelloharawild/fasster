context("setup-tests.R")

UKLungDeaths <- as_tsibble(cbind(mdeaths, fdeaths), pivot_longer = FALSE)
USAccDeaths <- as_tsibble(USAccDeaths)

USAccDeaths_fit <- USAccDeaths %>%
  model(fasster = fasster(value ~ trend(1) + season(12)))
