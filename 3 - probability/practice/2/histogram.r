# Corrected Table with the Number of Decimal Places

createTable <- function(data, decimalPlaces) {
  A <- max(data) - min(data)
  n <- length(data)
  
  if (n <= 100) {
    k <- ceiling(sqrt(n))
  } else {
    k <- ceiling(5 * log10(n))
  }
  
  C <- round(A / (k - 1), decimalPlaces)
  LI <- c(rep(0, (k + 1)))
  media <- c(NA)
  
  LI[1] <- round(min(data) - (C) / 2, decimalPlaces)
  
  for (i in 2:(k + 1)) {
    LI[i] <- round(LI[i - 1] + C, decimalPlaces)
    media[i - 1] <- mean(c(LI[i], LI[i - 1]))
  }
  
  limits <- LI
  TDF <- hist(data, breaks = limits, plot = FALSE, right = FALSE)
  table <- matrix(c(rep(6 * k)), k, 6)
  
  for (i in 1:k) {
    table[i, 1] <- round(LI[i], decimalPlaces)
    table[i, 2] <- round(LI[i + 1], decimalPlaces)
    table[i, 3] <- round(media[i], decimalPlaces)
    table[i, 4] <- (TDF$counts[i])
    table[i, 5] <- round(((TDF$counts[i]) / n), 5)
    table[i, 6] <- round((100 * TDF$counts[i]) / n, 3)
  }
  
  colnames(table) <- c("LI", "LS", "X", "Fa", "Fr", "Fp")
  return(table)
}

createTable(test, 2)

# Histogram

breaks <- function(data, decimalPlaces) {
  A <- max(data) - min(data)
  n <- length(data)
  
  if (n <= 100) {
    k <- ceiling(sqrt(n))
  } else {
    k <- ceiling(5 * log10(n))
  }
  
  C <- round(A / (k - 1), decimalPlaces)
  
  LI <- c(rep(0, (k + 1)))
  LI[1] <- round(min(data) - (C) / 2, decimalPlaces)
  
  for (i in 2:(k + 1)) {
    LI[i] <- round(LI[i - 1] + C, decimalPlaces)
  }
  
  return(LI)
}

limits <- breaks(test, 3)
limits

# Building the Frequency Distribution Table Information

TDF <- hist(test, breaks = limits, plot = FALSE, right = FALSE)
TDF

hist(test, label = FALSE, main = "",
     xlab = expression(paste("Concentration (", mu * g/m^3, ")")),
     ylab = "Absolute Frequency",
     ylim = c(0, (max(TDF$counts) + 1)),
     breaks = limits, axes = FALSE, right = FALSE)
axis(1, at = limits, pos = c(0, 0))
axis(2, at = c(seq(0:(max(TDF$counts) + 1)) - 1))
