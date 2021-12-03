algoritmo "Aumento"
// Função : Recebe o nome, salario e quantidade de funcionarios e analisa qual a porcentagem de aumento cada um terá e apresenta no final.
// Autor : Leonardo Carolino
// Data : 02/12/2021
// Seção de Declarações 
var
   Mnome: vetor[1..100] de caractere
   Msal: vetor[1..100] de real
   Msalt: vetor[1..100] de real
   Mporc: vetor[1..100] de real
   a, Num: inteiro


Funcao CalcAum(x: Real): Real
Inicio
      Se (x <= 400) entao
         Retorne x+((x*15)/100)
      Senao
           Se (x = 401) ou (x <=700) entao
              Retorne x+((x*12)/100)
           Senao
                Se (x = 701) ou (x <=1000) entao
                   Retorne x+((x*10)/100)
                Senao
                     Se (x = 1001) ou (x <=1800) entao
                        Retorne x+((x*7)/100)
                     Senao
                          Se (x = 1801) ou (x <=2500) entao
                             Retorne x+((x*4)/100)
                          Senao
                               Se (x >=2501) entao
                                  Retorne x
                               FimSe
                          FimSe
                     FimSe
                FimSe
           FimSe
      FimSe
FimFuncao

Funcao Calcporc(var x: Real): Real
Inicio
      Se (x <= 400) entao
         Retorne 15
      Senao
           Se (x = 401) ou (x <=700) entao
              Retorne 12
           Senao
                Se (x = 701) ou (x <=1000) entao
                   Retorne 10
                Senao
                     Se (x = 1001) ou (x <=1800) entao
                        Retorne 7
                     Senao
                          Se (x = 1801) ou (x <=2500) entao
                             Retorne 4
                          Senao
                               Se (x >=2501) entao
                                  Retorne 0
                               FimSe
                          FimSe
                     FimSe
                FimSe
           FimSe
      FimSe
FimFuncao

inicio
// Seção de Comandos
   Escreval("---------------------------------------------")
   Escreval("|   C A L C U L O    D E    A U M E N T O   |")
   Escreval("-----------------------------------------")
   Escreval()
   Escreva("Quantidade de funcionário[máx 100]: ")
   leia(Num)
   Escreval("-----------------------------------------")
   Escreval()
   Para a <- 1 ate Num faca
        Escreva("Nome do ", a, " Funcionario: ")
        leia(Mnome[a])
        Escreva("Salário: ")
        leia(Msal[a])
        Escreval("-----------------------------------------")
        Mporc[a] <- Calcporc(Msal[a])
        Msalt[a] <- CalcAum(Msal[a])
   FimPara
   LimpaTela
   Escreval("-----------------------------------------")
   Escreval("| C A L C U L O    D E    A U M E N T O |")
   Escreval("-----------------------------------------")
   Para a <- 1 ate Num faca
        Escreval("|FUNCIONÁRIO ", mNome[a]:29, "|")
        Escreval("|PORCENTAGEM DO AUMENTO:":30,"  ", Mporc[a]:10, "|")
        Escreval("|SALÁRIO ATUAL:":30, "R$", mSal[a]:10, "|")
        Escreval("|NOVO SALÁRIO:":30, "R$", mSalt[a]:10, "|")
        Escreval("-----------------------------------------")
   FimPara
fimalgoritmo
