Algoritmo "Bar"

Var
  sexo : caractere
  qtdCervejas, qtdRefrigerantes, qtdEspetinhos : inteiro
  consumo, couvert, ingresso, valorPagar : real
  validacao : logico
  
Inicio
  escreva("Sexo: ")
  leia(sexo)
  escreva("Quantidade de cervejas: ")
  leia(qtdCervejas)
  escreva("Quantidade de refrigerantes: ")
  leia(qtdRefrigerantes)
  escreva("Quantidade de espetinhos: ")
  leia(qtdEspetinhos)

  //Ingresso TRETA: Não consegui atribuir o valor cobrado diferente para homens e mulheres.
  //Aparece sintaxe incorreta linha 22.
  //Coloquei entre aspas, criei variaveis F, M, e não rolou. Logo, sem esa parte zoa o calculo do Couvert tbm e  o Valor a pagar.

  se sexo = "M" entao
     ingresso <- 10
  senao
     se sexo = "F" entao
        ingresso <- 8
     fimse
  fimse

  //Calculos
  qtdCervejas <- qtdCervejas * 5
  qtdRefrigerantes <- qtdRefrigerantes * 3
  qtdEspetinhos <- qtdEspetinhos * 7
  
  consumo <- qtdCervejas + qtdRefrigerantes + qtdEspetinhos
  
  couvert <- 0
  //Couvert
  se  consumo < 30 entao
      couvert <- + 4
  fimse

  valorPagar <- consumo + couvert + ingresso

  escreval
  escreval("RELATÓRIO:")
  escreval("Consumo = R$",consumo:4:2)
  se couvert <=0 entao
     escreval("Isento de Couvert")
  senao
  escreval("Couvert = R$",couvert:4:2)
  fimse
  escreval("Ingresso = R$",ingresso:4:2)
  escreval
  escreva("Valor a pagar = R$",valorPagar:4:2)
  
Fimalgoritmo