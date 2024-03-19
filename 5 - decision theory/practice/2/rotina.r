#==================================================================
# var.test()  Realiza o teste F para razao de variancias
#==================================================================

##Pode-se afirmar que A e B possuem variancias iguais? 

#H0: sig2A/sig2B =  1
#H1: sig2A/sig2B != 1

amostraA = c(16.6,13.4,14.6,15.1,12.9,15.2,14.0,16.6,15.4,13.0)
amostraB = c(15.8,17.9,18.2,20.2,18.1,17.8,18.3,18.6,17.0,18.4)
var(amostraA)  #calculando a variancia amostral
var(amostraB) 

var.test (amostraA, amostraB,alternative="two.side")

## Ficar atento com H1.
# usar alternative="two.side", quando H1 tiver sinal de diferente (!=)
# usar alternative="greater", quando H1 tiver sinal de maior (>)
# usar alternative="less", quando H1 tiver sinal de menor (<) 

###################################################################
#==================================================================
#              TESTE T PARA COMPARAR DUA M DIAS (Mu1 - Mu2)
#==================================================================        
# t.test()  Realiza o teste t-Student para  duas amostras INDEPENDENTES
##Teste t para comparacao de duas medias com variancias iguais
######################################################################

#  H0 : MuA - MuB = 0
#  H1 : MuA - MuB =\ 0

amostraA = c(16.6,13.4,14.6,15.1,12.9,15.2,14.0,16.6,15.4,13.0)
amostraB = c(15.8,17.9,18.2,20.2,18.1,17.8,18.3,18.6,17.0,18.4)

# como variancias sao iguais usar "var.equal = TRUE" ##

t.test(amostraA, amostraB, var.equal = TRUE, alternative="two.side")


#OBS: Quando as variancias das duas populacoes forem consideradas diferentes, 
#deve-se usar: var.equal = FALSE, como argumento na funcao t.test.

# t.test(amostraA, amostraB, var.equal = FALSE, alternative="two.side")

###################################################################
# t.test()  Realiza o teste t-Student para  duas amostras DEPENDENTES
#### Teste t EMPARELHADO (quando as observações são no mesmo elemento amostral)
######################################################################
# H0 : µDif =  0
# H1 : µDif =! 0

a = c(38,41,39,38,39,39)
b = c(37,37,36,38,37,36)

t.test(a,b,paired=TRUE,alternative="two.side" )  #paired=TRUE, indica que as amostras são dependentes.

# Ficar atento opções: alternative="greater", "less", "two.side"
#
#==================================================================
#  Teste para compara dua proporções (Pi1-Pi2)
#==================================================================
n1=160
ns1=150 # número de sucesso na amostra da pop_1

n2=140
ns2=118 # número de sucesso na amostra da pop_2

#Ha:Pip < Pim

prop.test(c(ns2,ns1),c(n2,n1),alternative="less")

#Ha:Pim > Pip
prop.test(c(ns1,ns2),c(n1,n2),alternative="greater")
## Ficar atento com H1.
# usar alternative="two.side", quando H1 tiver sinal de diferente (!=)
# usar alternative="greater", quando H1 tiver sinal de maior (>)
# usar alternative="less", quando H1 tiver sinal de menor (<) 