
#==============================================================
#     Construindo intervalo de Confiança para a Média (Mu)
#      QUANDO TIVER AS ESTATÍSTICAS DESCRITIVAS DA AMOSTRA
#==============================================================
#  
#     Informando a média,desvio Padrão e tamanho da amostra y #
#===============================================================
# EXEMPLO 7.4.2

My= 4.75       # média amostral
DPy= 1.83      # desvio padrão amostral
ny=  8         # tamanho da amostra 
conf=0.95      # nível de confiança#
alfa=1-conf;alfa  # nível de significância# 
me_mi=qt((alfa/2),ny-1,lower.tail = FALSE)*(DPy/sqrt(ny));me_mi    #calculando a margem de erro#
IC_mi=cbind(My-me_mi,My+me_mi);IC_mi

#==============================================================
# construindo intervalo de Confiança para a Proporção (pi) 
#==============================================================
# EXEMPLO 7.4.6

n=1000       #tamanho da amostra#
np=410       # número de sucessos em n#
pe=np/n;pe     # proporção amostral
conf=0.95  # nível de confiança#
alfa=1-conf;alfa  # nível de significância#
me_p=qnorm(1-alfa/2)*(sqrt(pe*(1-pe))/sqrt(n));me_p  #calculando a margem de erro#
IC_p=cbind(pe-me_p,  pe +me_p);IC_p



#==============================================================
# cálculo do tamanho da amostra para margem de erro na proporção(PI) #
#==============================================================

pap= 0.41      # propor  o na amostra piloto#
merrod=  0.02   #margem de erro desejada, deve sempre ser em DECIMAL#
conf=0.95  # n vel de confian a#
alfa=1-conf;alfa  # n vel de signific ncia#
n_novo_pi=((qnorm(alfa/2,lower.tail = FALSE)*(sqrt(pap*(1-pap))/merrod)))^2  
n_novo_pi

#==============================================================
# c lculo do tamanho da amostra com margem de erro para Mu #
#==============================================================

DPap= 1.83   # desvio Padr o da amostra piloto
nap=  8   #tamanho da amostra piloto
conf=0.95  # n vel de confian a#
alfa=1-conf;alfa  # n vel de signific ncia#
merrod= 0.7  #margem de erro desejada, NA MESMA UNIDADE DA M DIA#
n_novo_mi=(qt((alfa/2),nap-1,lower.tail = FALSE)*DPap/merrod)^2   ; n_novo_mi
 