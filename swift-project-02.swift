import Foundation

class ContaBancaria {
    var numeroConta: Int
    var nomeTitular: String     
    var saldo: Double

    init(numeroConta: Int, nomeTitular: String, saldo: Double) {
        self.numeroConta = numeroConta      
        self.nomeTitular = nomeTitular
        self.saldo = saldo
    }

    func getNumeroConta() -> Int {
        return self.numeroConta
    }

    func getNomeTitular() -> String {
        return self.nomeTitular
    }

    func getSaldo() -> Double {
        return self.saldo
    }
}

if let numeroConta = Int(readLine() ?? ""),
   let nomeTitular = readLine(),
   let saldo = Double(readLine() ?? "") {

    // Criar uma instância de "ContaBancaria" com os valores de entrada.
    let conta = ContaBancaria(numeroConta: numeroConta, nomeTitular: nomeTitular, saldo: saldo)

    print("Informacoes:")
    // Imprimir as informações da conta usando o objeto criado acima.
    print("Conta: \(conta.getNumeroConta())")
    print("Titular: \(conta.getNomeTitular())")
    print("Saldo: R$ \(conta.getSaldo())")
}

Desafios Swift: Herança Bancária
1 / 1 - Herança Bancária: Entendendo a Herança e Polimorfismo

import Foundation

class ContaBancaria {
    var nomeTitular: String
    var numeroConta: Int
    var saldo: Double

    init(numeroConta: Int, nomeTitular: String, saldo: Double) {
        self.numeroConta = numeroConta
        self.nomeTitular = nomeTitular
        self.saldo = saldo
    }

    func exibirInformacoes() {
        print("\(nomeTitular)")
        print("\(numeroConta)")
        print("Saldo: R$ \(String(format: "%.1f", saldo))")
    }
}

class ContaPoupanca: ContaBancaria {
    var taxaJuros: Double

    init(numeroConta: Int, nomeTitular: String, saldo: Double, taxaJuros: Double) {
        // TODO: Implementar adequadamente esta sobrecarga de construtores
    }

    override func exibirInformacoes() {
        super.exibirInformacoes()
        //TODO: Complementar as informações com a taxa de juros.

    }
}

func main() {
    guard let nomeTitular = readLine() else { return }
    guard let numeroConta = Int(readLine()!) else { return }
    guard let saldo = Double(readLine()!) else { return }
    guard let taxaJuros = Double(readLine()!) else { return }

    let contaPoupanca = ContaPoupanca(numeroConta: numeroConta, nomeTitular: nomeTitular, saldo: saldo, taxaJuros: taxaJuros)

    print("Conta Poupanca:")
    contaPoupanca.exibirInformacoes()
}

main()


import Foundation

class Cofre {
    var tipo: String
    var metodoAbertura: String

    init(tipo: String, metodoAbertura: String) {
        self.tipo = tipo
        self.metodoAbertura = metodoAbertura
    }

    func imprimirInformacoes() {
        print("Tipo:", tipo)
        print("Metodo de abertura:", metodoAbertura)
    }
}

class CofreDigital: Cofre {
    var senha: Int

    init(senha: Int) {
        self.senha = senha
        super.init(tipo: "Cofre Digital", metodoAbertura: "Senha")
    }

    func validarSenha(confirmacaoSenha: Int) -> Bool {
        return confirmacaoSenha == senha
    }
}

class CofreFisico: Cofre {
    override init(tipo: String, metodoAbertura: String) {
        super.init(tipo: "Cofre Fisico", metodoAbertura: "Chave")
    }
}

func main() {
    if let tipoCofre = readLine() {
        switch tipoCofre.lowercased() {
        case "digital":
            if let senhaStr = readLine(), let senha = Int(senhaStr),
               let confirmacaoSenhaStr = readLine(), let confirmacaoSenha = Int(confirmacaoSenhaStr) {

                let cofre = CofreDigital(senha: senha)
                cofre.imprimirInformacoes()

                if cofre.validarSenha(confirmacaoSenha: confirmacaoSenha) {
                    print("Cofre aberto!")
                } else {
                    print("Senha incorreta!")
                }
            }
        case "fisico":
            let cofre = CofreFisico(tipo: "Cofre Físico", metodoAbertura: "Chave")
            cofre.imprimirInformacoes()
        default:
            print("Tipo de cofre desconhecido.")
        }
    }
}

main()