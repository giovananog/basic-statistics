############################################################
# fazendo o teste MANUALMENTE para M�DIA (Mi) populacional 
#############################################################

#===========================================
#  AFIRMA��O
#==========================================
#testando de Mu=5, teste BILATERAL#

dpa= 1.832251    # desvio padr�o da AMOSTRA#
mediaa= 4.75     #m�dia da AMOSTRA#
n=8              #tamanho da AMOSTRA#

valorpar=5       # Valor testado Mu0#

tcalc=((mediaa-valorpar)/(dpa/(n^0.5)));tcalc #  quantil T calculado#

#pvalor do teste, ESCOLHA PELA HIP�TESE H1

# A) Teste Bilateral
p_valor_t=2*pt(abs(tcalc),df=n-1, lower.tail = FALSE);p_valor_t

# B) Teste unilateral � esquerda 
p_valor_t=pt(tcalc,df=n-1, lower.tail =TRUE);p_valor_t

# C) Teste unilateral � direita
p_valor_t=pt(tcalc,df=n-1, lower.tail = FALSE);p_valor_t

#==========================================================
# USANDO  A Fun��o t.test() para M�DIA populacional
#  Realiza o teste t-Student para uma ou duas amostras.
#==========================================================
amostra=c(6, 7, 7, 3, 4, 5, 4 , 2)�
t.test(amostra,mu=5,alternative="two.side")

# usar alternative="greater", quando H1 tiver sinal de maior (>)
# usar alternative="less", quando H1 tiver sinal de menor (<) 
# usar alternative="two.side", quando H1 tiver sinal de diferente (!=)

################################################################################
#               Teste a PROPOR��O (PI) de uma popula��o
#                Fazendo o teste MANUALMENTE 
################################################################################
#Exemplo: Um empres�rio desconfia que a propor��o de pessoas satisfeitas com o tempo de espera para
#atendimento de seus clientes n�o est� de acordo com sua meta, que � de no m�nimo de 90%. 
#Para testar essa hip�tese ele entrevistou 50 pessoas e questionou quanto a satisfa��o sobre
#o tempo de demora para ser atendido.Dos 50 entrevistados 42 afirmaram estarem satisfeitos. 
#A empresa est� atingindo a meta? Teste com a= 5%.

n=50
ns=42
p0<-0.90 # Valor a ser testado Pi0#

pe=ns/n;pe # propor��o amostral
zc = (pe-p0)/sqrt((pe*(1-pe))/n);zc

#pvalor do teste, ESCOLHA PELA HIP�TESE H1

# A) Teste Bilateral
p_valor_z=2*pnorm(abs(zc), lower.tail = FALSE);p_valor_z

# B) Teste unilateral � esquerda
p_valor_z=pnorm((zc), lower.tail = TRUE);p_valor_z

# C) Teste unilateral � direita
p_valor_z=pnorm((zc), lower.tail = FALSE);p_valor_z


#==========================================================
#               USANDO A FUN��O binom.test
#              Teste EXATO para PROPOR��O (PI)                            
#==========================================================
# Cuidado: entrada com n�mero de sucessos (ns) e tamanho da amostra (n)

n=50
ns=42
p0<-0.90 # Valor a ser testado (assumido) para Pi#

binom.test(ns, n, p = p0,alternative="less")

# usar alternative="greater", quando H1 tiver sinal de maior (>)
# usar alternative="less", quando H1 tiver sinal de menor (<) 
# usar alternative="two.side", quando H1 tiver sinal de diferente (!=)

#=====================================================================

