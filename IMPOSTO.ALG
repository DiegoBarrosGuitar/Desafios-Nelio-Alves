Algoritmo "Imposto"
//Prof. N?lio Alves
//Aluno: Diego Barros
//Turma 6 do curso FDS
Var

salarioAnual, servicoAnual, ganhoCapital, gastosMedicos, gastosEducacao : real
impostoSalario, impostoSevicos, impostoGanhoCapital, impostoBruto : real
maximoDedutivel, gastosDedutiveis, abatimento, impostoDevido : real

Inicio
    escreva("Renda anual com sal?rio: ")
    leia(salarioAnual)
    escreva("Renda anual com presta??o de servi?o: ")
    leia(servicoAnual)
    escreva("Renda anual com ganho de capital: ")
    leia(ganhoCapital)
    escreva("Gastos m?dicos: ")
    leia(gastosMedicos)
    escreva("Gastos educacionais:")
    leia(gastosEducacao)

    //imposto sobre salario
    se salarioAnual < 36000 entao
       impostoSalario <- 0
    senao
         se salarioAnual < 60000 entao
            impostoSalario <- salarioAnual * 0.1
         senao
            impostoSalario <- salarioAnual * 0.2
         fimse
    fimse
    
    //imposto sobre servi?os
    se servicoAnual < 36000 entao
       impostoSevicos <- 0
    senao servicoAnual > 0 entao
          impostoSevicos <- servicoAnual * 0.15
    fimse
    
    //imposto sobre ganho de capital
    
    se ganhoCapital > 0 entao
       impostoGanhoCapital <- ganhoCapital * 0.2
    senao
       impostoGanhoCapital <- 0
    fimse

    //imposto bruto
     impostoBruto <- impostoSalario + impostoSevicos + impostoGanhoCapital

    //Dedu??es
     maximoDedutivel <- impostoBruto * 0.3
     
     gastosDedutiveis <- gastosMedicos + gastosEducacao
     
     se (maximoDedutivel < gastosDedutiveis) entao
         abatimento <- maximoDedutivel
     senao
         abatimento <- gastosDedutiveis
     fimse

    impostoDevido <- impostoBruto - abatimento
     
    escreval
    escreval("RELAT?RIO DE IMPOSTO DE RENDA")
    escreval
    escreval("CONSOLIDADO DE RENDA: ")
    escreval("Imposto sobre sal?rio: ",impostoSalario:8:2)
    escreval("Imposto sobre servi?os: ",impostoSevicos:8:2)
    escreval("Imposto sobre ganho de capital: ",impostoGanhoCapital:8:2)
    escreval
    escreval("DEDU??ES: ")
    escreval("M?ximo dedut?vel: ",maximoDedutivel:8:2)
    escreval("Gastos dedut?veis: ",gastosDedutiveis:8:2)
    escreval
    escreval("RESUMO: ")
    escreval("Imposto bruto total: ",impostoBruto:8:2)
    escreval("Abatimento: ", abatimento:8:2)
    escreval("Imposto devido: ",impostoDevido:8:2)
    
Fimalgoritmo