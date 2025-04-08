````mermaid

sequenceDiagram
    participant Hóspede
    participant Sistema de Reservas
    participant Banco de Dados
    participant Sistema de Gestão de Quartos
    participant Sistema de Pagamento

    Hóspede->>+Sistema de Reservas: Solicita cadastro de reserva (dados)
    Sistema de Reservas->>+Banco de Dados: Verifica disponibilidade do quarto
    Banco de Dados-->>-Sistema de Reservas: Retorna disponibilidade
    Sistema de Reservas->>+Sistema de Pagamento: Processa pagamento
    Sistema de Pagamento-->>-Sistema de Reservas: Confirma pagamento
    Sistema de Reservas->>+Banco de Dados: Registra reserva
    Banco de Dados-->>-Sistema de Reservas: Confirmação do registro
    Sistema de Reservas->>+Sistema de Gestão de Quartos: Atualiza status do quarto (Reservado)

    Hóspede->>+Sistema de Reservas: Solicita Check-in
    Sistema de Reservas->>+Banco de Dados: Valida reserva e documento
    Banco de Dados-->>-Sistema de Reservas: Confirma status
    Sistema de Reservas->>+Banco de Dados: Atualiza status do hóspede (Check-in realizado)
    Banco de Dados-->>-Sistema de Reservas: Confirma atualização
    Sistema de Reservas->>+Sistema de Gestão de Quartos: Atualiza status do quarto (Ocupado)

    Hóspede->>+Sistema de Reservas: Solicita Check-out
    Sistema de Reservas->>+Sistema de Pagamento: Processa pagamento final
    Sistema de Pagamento-->>-Sistema de Reservas: Confirma pagamento
    Sistema de Reservas->>+Banco de Dados: Atualiza status do hóspede (Check-out realizado)
    Banco de Dados-->>-Sistema de Reservas: Confirma atualização
  
