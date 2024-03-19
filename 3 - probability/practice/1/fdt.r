##################################################
# Frequency Distribution Table in Classes (FDT)
###############################################################

# The data set must have already been imported from Excel with the name "Dataset"

data <- Dataset$glucose_rate; data  # Storing observations in the data object

n <- length(data); n  # Number of observations
k <- sqrt(n) + 0.5; k <- round(k, 0)  # Number of classes
C <- (max(data) - min(data)) / (k - 1); C <- round(C, 2)  # Class width two decimal places
limits <- round(min(data) - C/2, 2) + C * (0:k);  # Limits
FDT <- hist(data, breaks = limits, plot = FALSE, right = FALSE)
table <- matrix(c(rep(6 * k)), k, 6)
for (i in 1:k) {
    table[i, 1] <- round(FDT$breaks[i], 2);
    table[i, 2] <- round(FDT$breaks[i + 1], 2)
    table[i, 3] <- round(FDT$mids[i], 2);
    table[i, 4] <- FDT$counts[i]
    table[i, 5] <- round(((FDT$counts[i]) / n), 4);
    table[i, 6] <- round((100 * FDT$counts[i]) / n, 2)
}
colnames(table) <- c("LI", "LS", "Xi", "Fi", "Fr", "Fp")
table

##################################################
# Constructing the Histogram
#####################################################################

# The data set must have already been imported from Excel with the name "Dataset"

data <- Dataset$glucose_rate; data  # Storing observations in the data object

n <- length(data); n  # Number of observations
k <- sqrt(n) + 0.5; k <- round(k, 0)  # Number of classes
C <- (max(data) - min(data)) / (k - 1); C <- round(C, 2)  # Class width two decimal places
limits <- round(min(data) - C/2, 2) + C * (0:k);  # Limits
FDT <- hist(data, breaks = limits, plot = FALSE, right = FALSE)
hist(data, xlab = "Glucose Rate (mg/dl)", ylab = "Absolute Frequency",
     label = FALSE, col = "gray", main = "", right = FALSE, 
     xlim = c(min(FDT$mids) - C, max(FDT$mids) + C), ylim = c(0, (max(FDT$counts) + 1)), breaks = limits, axes = FALSE)
axis(1, at = limits, pos = c(0, 0))
axis(2, at = c(seq(0:(max(FDT$counts) + 1)) - 1))
