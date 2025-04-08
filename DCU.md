```mermaid

---
config:
  layout: fixed
---
flowchart TD
    A["👤 Hóspede"] -- Reserva --> UC1["Cadastro de Reservas"]
    A -- Preço Dinâmico --> UC2["Consulta de Preços"]
    A -- "Check-in/out" --> UC3["Check-in e Check-out Automatizados"]
    B["👤 Funcionário"] -- Gerenciar Quartos --> UC4["Gestão de Quartos"]
    B -- Limpeza/Manutenção --> UC5["Acompanhar Limpeza e Manutenção"]
    C["👤 Administrador"] -- Gerenciar Financeiro --> UC6["Gestão Financeira e Faturamento"]
    C -- Gerenciar Clientes --> UC7["Gestão de Clientes"]
    C -- Gerenciar Funcionários --> UC8["Gestão de Funcionários"]
    C -- Definir Promoções --> UC9["Gestão de Taxas e Tarifas"]
    
   
    UC4 -- Inclui --> UC5
    UC6 -- Inclui --> UC9
