```mermaid
classDiagram
direction TB
    class Hospede {
	    +String nome
	    +String email
	    +int telefone
	    +String documento
	    +historicoReservas()
    }

    class Reserva {
	    +int id
	    +Date dataCheckIn
	    +Date dataCheckOut
	    +String tipoQuarto
	    +boolean confirmada
	    +registrarReserva()
	    +cancelarReserva()
    }

    class Quarto {
	    +int numero
	    +int preco
	    +String tipo
	    +boolean disponivel
	    +atualizarStatus()
    }

    class PrecoDinamico {
	    +float tarifaBase
	    +float tarifaAtual
	    +ajustarPreco()
    }

    class CheckInOut {
	    +boolean checkInRealizado
	    +boolean checkOutRealizado
	    +realizarCheckIn()
	    +realizarCheckOut()
    }

    class GestaoQuartos {
	    +atualizarDisponibilidade()
	    +gerenciarItens()
    }

    class LimpezaManutencao {
	    +solicitarLimpeza()
	    +solicitarManutencao()
    }

    class Financeiro {
	    +registrarPagamento()
	    +gerarRelatorio()
    }

    class Cliente {
	    +String nome
	    +String preferencias
	    +atualizarPerfil()
    }

    class Funcionario {
	    +String nome
	    +String cargo
	    +int horasTrabalhadas
	    +atribuirTarefa()
    }

    class TaxasTarifas {
	    +float desconto
	    +aplicarPromocao()
    }

    Hospede "1" -- "n" Reserva : realiza
    Reserva "1" -- "1" Quarto : associa
    Reserva "1" -- "1" CheckInOut : gerencia
    GestaoQuartos "1" -- "n" Quarto : controla
    LimpezaManutencao "1" -- "n" Quarto : monitora
    Financeiro "1" -- "n" Reserva : processa
    Cliente "1" -- "n" Reserva : consulta
    Funcionario "1" -- "n" LimpezaManutencao : executa
    TaxasTarifas "1" -- "n" PrecoDinamico : aplica

```

---

# **Dicionário de Dados**

| Entidade | Atributo | Tipo | Descrição |
|----------|---------|------|-----------|
| Hospede | nome | String | Nome do hóspede |
| Hospede | cpf | String | CPF do hóspede |
| Hospede | telefone | int | Telefone do hóspede |
| Hospede | email | String | E-mail do hóspede |
| Reserva | idReserva | int | Identificador único da reserva |
| Reserva | dataCheckin | Date | Data de entrada no hotel |
| Reserva | dataCheckout | Date | Data de saída do hotel |
| Reserva | status | String | Status da reserva (confirmada/cancelada) |
| Quarto | numero | int | Número do quarto |
| Quarto | tipo | String | Tipo de quarto (luxo, standard, etc.) |
| Quarto | disponivel | boolean | Disponibilidade do quarto |
| Quarto | preco | float | Preço do quarto |
| Funcionario | nome | String | Nome do funcionário |
| Funcionario | cargo | String | Cargo do funcionário |
| Funcionario | cpf | String | CPF do funcionário |
| Funcionario | telefone | String | Telefone do funcionário |
| Pagamento | idPagamento | int | Identificador único do pagamento |
| Pagamento | valor | float | Valor do pagamento |
| Pagamento | metodo | String | Método de pagamento (cartão, boleto, etc.) |
| Pagamento | dataPagamento | Date | Data do pagamento |
| PrecosDinamicos | precoBase | float | Preço base do quarto |
| PrecosDinamicos | precoAjustado | float | Preço ajustado conforme demanda |
| CheckinCheckout | idCheckin | int | Identificador do check-in/check-out |
| CheckinCheckout | dataCheckin | Date | Data do check-in |
| CheckinCheckout | dataCheckout | Date | Data do check-out |
