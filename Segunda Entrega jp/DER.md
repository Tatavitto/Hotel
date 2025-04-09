````mermaid
 
erDiagram
    pessoa {
        int IDPessoa
        varchar(100) Nome
        varchar(21) CPF
        varchar(20) RG
        varchar(200) Endereco
        varchar(200) email
        varchar(20) telefone
        varchar(3) TipoSangue
    }

    vw_pessoa_tipo {
        int IDPessoa
        varchar(100) Nome
        varchar(20) CPF
        varchar(20) telefone
        varchar(20) TipoPessoa
    }

    hospede {
        int IDHospede
        int CodPessoa
    }

    cliente {
        int codCliente
        text Preferencias
    }

    funcionario {
        int IDFuncionario
        int CodPessoa
        varchar(50) Cargo
        float salario
    }

    reserva {
        int IDReserva
        date dataCheckIn
        date dataCheckOut
        int CodQuarto
        tinyint Confirmar
    }

    quartos {
        int IdQuarto
        int CodHospede
        int CodFuncionario
        timestamp checkin
        timestamp checkout
        varchar(50) TipoDequartos
        int Disponivel
    }

    checkinout {
        int CodReserva
        int checkInRealizado
        int checkOutRealizado
    }

    precodinamico {
        int codTaxa
        float TarifaBase
        float TarifaAtual
    }

    taxastarifas {
        int IDTaxa
        float Desconto
    }

    pessoa ||--o{ hospede : possui
    pessoa ||--o{ funcionario : possui
    reserva ||--|| checkinout : possui
    reserva ||--o{ quartos : inclui
    funcionario ||--o{ quartos : gerencia
    hospede ||--o{ reserva : realiza
    cliente ||--o{ reserva : faz
    precodinamico ||--o{ taxastarifas : define

`````
----

# **Dicionário de Dados**

## Tabela: hospede
| Atributo | Tipo | Descrição |
|----------|------|-----------|
| IDHospede | int | Identificador único do hóspede |
| CodPessoa | int | Chave estrangeira para a tabela `pessoa` |

---

## Tabela: cliente
| Atributo | Tipo | Descrição |
|----------|------|-----------|
| codCliente | int | Identificador único do cliente |
| Preferencias | text | Preferências do cliente |

---

## Tabela: funcionario
| Atributo | Tipo | Descrição |
|----------|------|-----------|
| IDFuncionario | int | Identificador único do funcionário |
| CodPessoa | int | Chave estrangeira para a tabela `pessoa` |
| Cargo | varchar(50) | Cargo do funcionário |
| salario | float | Salário do funcionário |

---

## Tabela: pessoa
| Atributo | Tipo | Descrição |
|----------|------|-----------|
| IDPessoa | int | Identificador único da pessoa |
| Nome | varchar(100) | Nome completo da pessoa |
| CPF | varchar(21) | CPF da pessoa |
| RG | varchar(20) | RG da pessoa |
| Endereco | varchar(200) | Endereço da pessoa |
| email | varchar(200) | E-mail da pessoa |
| telefone | varchar(20) | Telefone da pessoa |
| TipoSangue | varchar(3) | Tipo sanguíneo da pessoa |

---

## Tabela: vw_pessoa_tipo
| Atributo | Tipo | Descrição |
|----------|------|-----------|
| IDPessoa | int | Identificador único da pessoa |
| Nome | varchar(100) | Nome da pessoa |
| CPF | varchar(20) | CPF da pessoa |
| telefone | varchar(20) | Telefone da pessoa |
| TipoPessoa | varchar(20) | Tipo de pessoa (Hóspede, Funcionário, etc.) |

---

## Tabela: reserva
| Atributo | Tipo | Descrição |
|----------|------|-----------|
| IDReserva | int | Identificador da reserva |
| dataCheckIn | date | Data de entrada no hotel |
| dataCheckOut | date | Data de saída do hotel |
| CodQuarto | int | Chave estrangeira para `quartos` |
| Confirmar | tinyint | Status da reserva (1 = confirmada, 0 = não) |

---

## Tabela: quartos
| Atributo | Tipo | Descrição |
|----------|------|-----------|
| IdQuarto | int | Identificador único do quarto |
| CodHospede | int | Chave estrangeira para a tabela `hospede` |
| CodFuncionario | int | Chave estrangeira para a tabela `funcionario` |
| checkin | timestamp | Data e hora do check-in |
| checkout | timestamp | Data e hora do check-out |
| TipoDequartos | varchar(50) | Tipo do quarto |
| Disponivel | tinyint | Indica se está disponível (1 = sim, 0 = não) |

---

## Tabela: checkinout
| Atributo | Tipo | Descrição |
|----------|------|-----------|
| CodReserva | int | Chave estrangeira para `reserva` |
| checkInRealizado | tinyint | Check-in realizado (1 = sim, 0 = não) |

