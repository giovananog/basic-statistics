# Determining that Age is the response variable
dados <- Dataset$Idade

# Population size
N <- length(dados)
N

# Sample size
n <- 80

# Stratified sampling

# Stratifying by the variable "Aprendeu" (Learned)
# If the variable is numeric, don't forget to transform it into a factor.
aprendeu <- Dataset$Aprendeu
aprendeu

# Checking how many elements are in the population for each learning method
summary(aprendeu)

# There are 9 different learning methods. Each method will be a stratum.
# Creating a vector with the population size of each stratum

Nestrato <- summary(aprendeu)
Nestrato

# Defining the sample size in each stratum
Tamanhoamos <- round((Nestrato/N) * n, 0)
Tamanhoamos

# Checking if the sum of the sample sizes is equal to the desired sample size
sum(Tamanhoamos)

# Separating the ages of the population for each stratum, i.e., for each way a person learned or is learning to program.

# Vectors to store the ages of each stratum
aprendeu1 <- c()
aprendeu2 <- c()
aprendeu3 <- c()
aprendeu4 <- c()
aprendeu5 <- c()
aprendeu6 <- c()
aprendeu7 <- c()
aprendeu8 <- c()
aprendeu9 <- c()

# Counters for the number of elements in each stratum
c1 <- 1
c2 <- 1
c3 <- 1
c4 <- 1
c5 <- 1
c6 <- 1
c7 <- 1
c8 <- 1
c9 <- 1

# Separating the population by stratum
for (i in 1:N) {
  if (aprendeu[i] == "1") {
    aprendeu1[c1] <- dados[i]
    c1 <- c1 + 1
  } else {
    if (aprendeu[i] == "2") {
      aprendeu2[c2] <- dados[i]
      c2 <- c2 + 1
    } else {
      if (aprendeu[i] == "3") {
        aprendeu3[c3] <- dados[i]
        c3 <- c3 + 1
      } else {
        if (aprendeu[i] == "4") {
          aprendeu4[c4] <- dados[i]
          c4 <- c4 + 1
        } else {
          if (aprendeu[i] == "5") {
            aprendeu5[c5] <- dados[i]
            c5 <- c5 + 1
          } else {
            if (aprendeu[i] == "6") {
              aprendeu6[c6] <- dados[i]
              c6 <- c6 + 1
            } else {
              if (aprendeu[i] == "7") {
                aprendeu7[c7] <- dados[i]
                c7 <- c7 + 1
              } else {
                if (aprendeu[i] == "8") {
                  aprendeu8[c8] <- dados[i]
                  c8 <- c8 + 1
                } else {
                  if (aprendeu[i] == "9") {
                    aprendeu9[c9] <- dados[i]
                    c9 <- c9 + 1
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

# Sampling the strata of how they learned

amostra1 <- sample(aprendeu1, Tamanhoamos[1])
amostra2 <- sample(aprendeu2, Tamanhoamos[2])
amostra3 <- sample(aprendeu3, Tamanhoamos[3])
amostra4 <- sample(aprendeu4, Tamanhoamos[4])
amostra5 <- sample(aprendeu5, Tamanhoamos[5])
amostra6 <- sample(aprendeu6, Tamanhoamos[6])
amostra7 <- sample(aprendeu7, Tamanhoamos[7])
amostra8 <- sample(aprendeu8, Tamanhoamos[8])
amostra9 <- sample(aprendeu9, Tamanhoamos[9])

# Combining the sampled elements into a single data set
amostraest <- c(amostra1, amostra2, amostra3, amostra4,
                amostra5, amostra6, amostra7, amostra8, amostra9)
amostraest

# Mean age of the sample obtained by stratified sampling technique.
mediaest <- mean(amostraest)
mediaest

# Calculating the estimation error;

# Population mean
mediapop <- mean(dados)

# Estimation error: stratified
erroest <- abs(mediaest - mediapop)
erroest
