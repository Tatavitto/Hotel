 # Requisitos Funcionais - Hotel Ipiranga  

## RF01 - Cadastro de Reservas  
**Descrição:**   O sistema deve permitir que os hóspedes realizem reservas online.    
**Entradas:** Dados do hóspede, datas da reserva, tipo de quarto(Solteiro/Casal).    
**Origem:** Interface do usuário.    
**Saída:** Confirmação da reserva.    
**Destino:** Banco de dados do hotel.    
**Ação:** Registrar reserva e enviar confirmação ao hóspede.    
**Pré-condição:** O hóspede deve fornecer informações válidas.    
**Pós-condição:** A reserva deve estar registrada e disponível no sistema.    
**Efeitos colaterais:** Atualização da disponibilidade de quartos.    
  
## RF02 - Preços Dinâmicos  
**Descrição:** O sistema deve ajustar os preços automaticamente com base em demanda.    
**Entradas:** Dados de ocupação, histórico de reservas.    
**Origem:** Banco de dados do sistema.    
**Saída:** Atualização automática das tarifas.    
**Destino:** Página de reservas.    
**Ação:** Aplicar algoritmos de precificação dinâmica.    
**Pré-condição:** Deve haver critérios estabelecidos para ajuste de preços.    
**Pós-condição:** Tarifas ajustadas de acordo com regras do hotel.    
**Efeitos colaterais:** Possível aumento ou redução da demanda.    
  
## RF03 - Check-in e Check-out  
**Descrição:** O sistema deve permitir check-in antecipado e check-out.    
**Entradas:** Documento do hóspede.    
**Origem:** Interface do usuário e recepção do hotel.    
**Saída:** Confirmação de check-in/check-out.     
**Destino:** Banco de dados do hotel.    
**Ação:** Registrar entrada e saída do hóspede.  
**Pré-condição:** Reserva confirmada.  
**Pós-condição:** Atualização do status do hóspede.  
**Efeitos colaterais:** Redução do tempo de atendimento na recepção.  
  
## RF04 - Gestão de Quartos  
**Descrição:** O sistema deve controlar a disponibilidade de diferentes tipos de quartos e monitorar o estoque de itens como toalhas, lençóis.  
**Entradas:** Informações de reserva, status de ocupação.  
**Origem:** Sistema de reservas e governança do hotel.  
**Saída:** Atualização da disponibilidade de quartos.  
**Destino:** Banco de dados do hotel.  
**Ação:** Atualizar status dos quartos e disponibilidade de itens.  
**Pré-condição:** O sistema deve conter dados atualizados sobre quartos.  
**Pós-condição:** Informação precisa para a equipe de recepção e limpeza.  
**Efeitos colaterais:** Melhor controle operacional.  
  
## RF05 - Limpeza e Manutenção  
**Descrição:** O sistema deve possibilitar a solicitação e o acompanhamento de tarefas de limpeza e manutenção dos quartos.  
**Entradas:** Solicitações da recepção ou hóspedes.  
**Origem:** Software do hotel, recepção.  
**Saída:** Ordem de serviço gerada.  
**Destino:** Equipe de limpeza e manutenção.  
**Ação:** Atribuir tarefas e monitorar status.  
**Pré-condição:** Quarto precisa estar identificado como disponível ou ocupado.  
**Pós-condição:** Quarto atualizado como limpo ou manutenção concluída.  
**Efeitos colaterais:** Redução de tempo ocioso dos funcionários.  
  
## RF06 - Gestão Financeira e Faturamento  
**Descrição:** O sistema deve permitir integração com métodos de pagamento e gerar relatórios financeiros.  
**Entradas:** Dados de transações financeiras.  
**Origem:** Sistema de pagamento e registros de vendas.  
**Saída:** Relatórios financeiros e faturas.  
**Destino:** Contabilidade.  
**Ação:** Registrar pagamentos e consolidar informações financeiras.  
**Pré-condição:** Existência de transações registradas.  
**Pós-condição:** Relatórios financeiros disponíveis para análise.  
**Efeitos colaterais:** Maior controle sobre fluxo de caixa.  
  
## RF07 - Gestão de Clientes  
**Descrição:** O sistema deve armazenar informações seguras dos hóspedes, incluindo histórico de reservas.  
**Entradas:** Dados pessoais e histórico de reservas.  
**Origem:** Formulários de cadastro e registros de hospedagem.  
**Saída:** Perfil do hóspede atualizado.  
**Destino:** Banco de dados do hotel.  
**Ação:** Registrar informações e atualizar preferências.  
**Pré-condição:** Hóspede deve autorizar armazenamento de dados.  
**Pós-condição:** Histórico acessível para personalização do atendimento.  
**Efeitos colaterais:** Melhor experiência do hóspede.  
  
## RF08 - Gestão de Funcionários  
**Descrição:** O sistema deve monitorar turnos e permitir atribuição de tarefas específicas para funcionários.  
**Entradas:** escala de trabalho.  
**Origem:** Sistema de gestão de pessoal.  
**Saída:** Relatórios de controle de jornada.  
**Destino:**  Gerente Hotel.  
**Ação:** Registrar horários e alocar tarefas.  
**Pré-condição:** Funcionário deve estar cadastrado.  
**Pós-condição:** Jornada de trabalho controlada.  
**Efeitos colaterais:** Redução de falhas na gestão de pessoal.  
  
## RF09 - Gestão de Taxas e Tarifas  
**Descrição:** O sistema deve permitir a configuração de descontos e promoções sazonais.  
**Entradas:** Definição de regras de desconto.  
**Origem:** Administração do hotel.  
**Saída:** Atualização de preços promocionais.  
**Destino:** sistema de reservas.  
**Ação:** Aplicar tarifas promocionais automaticamente.  
**Pré-condição:** Política de descontos definida.  
**Pós-condição:** Tarifas ajustadas no sistema.  
**Efeitos colaterais:** Maior taxa de conversão de reservas.  
  

 
  
