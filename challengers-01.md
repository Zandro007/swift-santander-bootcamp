Desafios Swift: Equilibrando o Saldo
1 / 1 - Variáveis em Ação: Equilibrando o Saldo

import Foundation

func equilibrandoSaldo() {
    let saldoAtual = Double(readLine()!)!
    
    let valorDeposito = Double(readLine()!)!
    
    let valorRetirada = Double(readLine()!)!

    // Calcula o saldo atualizado
    let saldoAtualizado = saldoAtual + valorDeposito - valorRetirada

    // Imprime o saldo atualizado com uma casa decimal
    print("Saldo atualizado na conta:  \(saldoAtualizado)")
}

equilibrandoSaldo()


Desafios Swift: Organizando Seus Ativos
1 / 1 - Estrutura de Dados: Organizando Os Seus Ativos

import Foundation

func main() {
   
    // Entrada da quantidade de ativos
    let quantidadeAtivos = Int(readLine()!)!

    var ativos: [String] = []

    // Entrada dos códigos dos ativos
    for _ in 0..<quantidadeAtivos {
        if let codigoAtivo = readLine() {
            ativos.append(codigoAtivo)
        }
    }

    // Ordenar os ativos em ordem alfabética.
    ativos.sort()
    
    // Imprimir a lista de ativos ordenada, conforme a tabela de exemplos.
    for ativo in ativos {
        print(ativo)
    }
}

main()

Desafios Swift: Condicionalmente Rico
1 / 1 - Condicionalmente Rico: Tomadas de Decisão no Código

import Foundation

func main() {
    // Entrada de dados
    let saldoTotal = Int(readLine()!)!
    let valorSaque = Int(readLine()!)!
    

//TODO: Criar as condições necessárias para impressão da saída, vide tabela de exemplos.

    if saldoTotal >= valorSaque {
      var saldoAtualizado = saldoTotal - valorSaque
      print("Saque realizado com sucesso. Novo saldo: \(saldoAtualizado)")
      
      
      
    } else {
      print("Saldo insuficiente. Saque nao realizado!")
    }
}

main()

Desafios Swift: Juros Compostos
1 / 1 - Juros Compostos

import Foundation

func calculateInvestmentValue() {
    guard let valorInicial = readLine().flatMap(Float.init),
          let taxaJuros = readLine().flatMap(Float.init),
          let periodo = readLine().flatMap(Int.init)
    else {
        return
    }
    
    var valorFinal = valorInicial
    
    for _ in 1...periodo {
        valorFinal += valorFinal * taxaJuros
    }
    
    let formattedValue = String(format: "%.2f", valorFinal)
    print("Valor final do investimento: R$ \(formattedValue)")
}

calculateInvestmentValue()

Desafios Swift: O Grande Deposito
1 / 1 - O Grande Depósito - Solucionando Problemas Bancários

import Foundation


func main() {

   var saldo: Double = 0.0


   while let input = readLine(), let valor = Double(input) {

       if valor > 0 {

           saldo += valor

           let saldoFormatado = String(format: "%.2f", saldo)

           print("Deposito realizado com sucesso! \n Saldo atual: R$ \(saldoFormatado)")

       } else if valor == 0 {

           print("Encerrando o programa...")

       } else {

           print("Valor invalido! Digite um valor maior que zero.")

           return

       }

   }

}

// Chame a função principal para iniciar o programa

main()