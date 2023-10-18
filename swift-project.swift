// PROJECT 01
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

// PROJECT 02

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
