Desafios Swift: Abrindo Contas

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

Desafios Swift: Cofres Seguros
1 / 1 - Cofres Seguros: Dominando o Encapsulamento e Abstração

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

Desafios Swift: Cofres Seguros
1 / 1 - Cofres Seguros: Dominando o Encapsulamento e Abstração

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

Desafios Swift: Reunião de Acionistas
1 / 1 - Reunião de Acionistas: Consultando Análises Bancárias

import Foundation

func main() {
    let interfaceAcionistas = InterfaceAcionistas()
    let scanner = Scanner()

    let dataInicial = scanner.nextLine()
    let dataFinal = scanner.nextLine()

    let analises = interfaceAcionistas.obterAnalisesDesempenho(dataInicial: dataInicial, dataFinal: dataFinal)

    for analise in analises {
        print(analise)
    }
}

class InterfaceAcionistas {
    func obterAnalisesDesempenho(dataInicial: String, dataFinal: String) -> [String] {
        var analises = [String]()

        var analisesOriginais = [Analise]()
        analisesOriginais.append(Analise(data: "01/01/2023", analise: "Analise de Desempenho Financeiro"))
        analisesOriginais.append(Analise(data: "15/02/2023", analise: "Analise de Riscos e Exposicoes"))
        analisesOriginais.append(Analise(data: "31/03/2023", analise: "Analises Corporativas"))
        analisesOriginais.append(Analise(data: "01/04/2023", analise: "Analise de Politicas e Regulamentacoes"))
        analisesOriginais.append(Analise(data: "15/05/2023", analise: "Analise de Ativos"))
        analisesOriginais.append(Analise(data: "30/06/2023", analise: "Analise de Inovacao e Tecnologia"))

        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        let dataInicialDate = dateFormatter.date(from: dataInicial)!
        let dataFinalDate = dateFormatter.date(from: dataFinal)!

        for analise in analisesOriginais {
            let analiseDate = dateFormatter.date(from: analise.data)!
            if analiseDate >= dataInicialDate && analiseDate <= dataFinalDate {
                analises.append(analise.analise)
            }
        }
        
        return analises
    }
}

class Analise {
    let data: String
    let analise: String

    init(data: String, analise: String) {
        self.data = data
        self.analise = analise
    }
}

class Scanner {
    func nextLine() -> String {
        let line = readLine()
        return line ?? ""
    }
}

main()

Desafios Swift: A Última Transação
1 / 1 - A Última Transação: Transformando Registros Bancários

import Foundation

func main() {
    if let entrada = readLine() {
        let partes = entrada.split(separator: ",")

        // TODO: Solicitar ao usuário que forneça os valores necessários para criar uma Transacao.
}

class Transacao {
    let data: String
    let hora: String
    let descricao: String
    let valor: Double

    init(data: String, hora: String, descricao: String, valor: Double) {
        self.data = data
        self.hora = hora
        self.descricao = descricao
        self.valor = valor
    }

    func imprimir() {
        print(descricao)
        print(data)
        print(hora)
        print(String(format: "%.2f", valor))
    }
}

extension Collection {
    subscript(safe index: Index) -> Element? {
        indices.contains(index) ? self[index] : nil
    }
}

main()
