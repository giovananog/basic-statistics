# Determining Age as the response variable
dados <- Dataset$Idade

# Population size
N <- length(dados)
N

# Sample size
n <- 80

# Simple random sampling

# Direct sampling of the age variable
amostracs <- sample(dados, n)
amostracs

mediacs <- mean(amostracs)
mediacs

# Systematic sampling

# Skip size
skip <- round(N/n, 0)
skip

# Creating a vector to store the selected observations
obsist <- c()

# Drawing the first sample element
obsist[1] <- sample(skip, 1)
obsist[1]

# Determining the remaining sample elements
for (i in 2:n)
  obsist[i] <- obsist[i - 1] + skip

obsist

# Extracting the age of the selected elements
amostrasist <- c()
for (i in 1:n)
  amostrasist[i] <- dados[obsist[i]]

amostrasist
mediasist <- mean(amostrasist)
mediasist

# Stratified sampling

# Stratifying by occupation
atuacao <- Dataset$Atuacao
atuacao

# Checking the number of elements in the population for each occupation
summary(atuacao)

# Population size of apprentices (A)
Nap <- 491

# Population size of professionals (P)
Np <- 6710

# Population size of other occupations (O)
No <- 511

# Defining the sample size in each stratum

# Apprentices
nap <- round((Nap/N) * n, 0)
nap

# Professionals
np <- round((Np/N) * n, 0)
np

# Other occupations
no <- round((No/N) * n, 0)
no

# Checking if the sum of the sample sizes in each stratum is equal to the sample size
nap + np + no

# Separating the ages of the population for each stratum, i.e., for each occupation

# Apprentices
idadeA <- c()

# Professionals
idadeP <- c()

# Other occupations
idadeO <- c()

a <- 1
p <- 1
o <- 1
for (i in 1:N) {
  if (atuacao[i] == "A") {
    idadeA[a] <- dados[i]
    a <- a + 1
  } else {
    if (atuacao[i] == "P") {
      idadeP[p] <- dados[i]
      p <- p + 1
    } else {
      idadeO[o] <- dados[i]
      o <- o + 1
    }
  }
}

idadeA
idadeP
idadeO

# Sampling the apprentices stratum
amostraap <- sample(idadeA, nap)

# Sampling the professionals stratum
amostrap <- sample(idadeP, np)

# Sampling the other occupations stratum
amostrao <- sample(idadeO, no)

# Combining the sampled elements into a single data set
amostraest <- c(amostraap, amostrap, amostrao)
amostraest

# Mean age of the sample obtained by stratified sampling technique
mediaest <- mean(amostraest)
mediaest

# Calculating estimation errors

# Population mean
mediapop <- mean(dados)

# Estimation error: simple random sampling
errocs <- abs(mediacs - mediapop)
errocs

# Estimation error: systematic
errosist <- abs(mediasist - mediapop)
errosist

# Estimation error: stratified
erroest <- abs(mediaest - mediapop)
erroest

# Which estimation method showed the smallest estimation error?
