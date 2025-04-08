 # **Requisitos Não Funcionais - Hotel Ipiranga**

## **RNF01 - Desempenho**
- **Descrição:** O sistema deve processar reservas e pagamentos em menos de **2 segundos**.  
- **Detalhes do Recurso/Tecnologia:** Aplicação desenvolvida em **Java (Swing/JavaFX)** conectada ao banco de dados **MySQL** gerenciado via **phpMyAdmin**. Comunicação via **JDBC** otimizado para alto desempenho.  
- **Versão:** 1.0  
- **Licença:** GPL  

## **RNF02 - Segurança**
- **Descrição:** Os dados dos hóspedes e transações devem ser armazenados com **criptografia** e seguir as diretrizes da **LGPD**(estabelecem regras para a coleta, uso, armazenamento e compartilhamento de dados pessoais.).  
- **Detalhes do Recurso/Tecnologia:** Uso de criptografia  para senhas e dados sensíveis. Controle de acesso por níveis de usuário (**administrador, recepcionista, manutenção**).  
- **Versão:** 1.0  
- **Licença:** GPL  

## **RNF03 - Escalabilidade**
- **Descrição:** O sistema deve suportar até **500 acessos simultâneos em rede local** sem perda de desempenho.  
- **Detalhes do Recurso/Tecnologia:** O banco de dados **MySQL** estará otimizado com **procedures e índices**, e a aplicação utilizará **pool de conexões JDBC** para otimizar o tráfego de dados.  
- **Versão:** 1.0  
- **Licença:** GPL  

## **RNF04 - Disponibilidade**
- **Descrição:** O sistema deve estar disponível **100% do tempo**, desde que o servidor MySQL esteja ativo.  
- **Detalhes do Recurso/Tecnologia:** Aplicação standalone que se conecta ao **MySQL via phpMyAdmin**, com suporte a **reconexão automática em caso de falha**.  
- **Versão:** 1.0  
- **Licença:** GPL  

## **RNF05 - Usabilidade**
- **Descrição:** A interface deve ser **intuitiva, simples e responsiva**.  
- **Detalhes do Recurso/Tecnologia:** Desenvolvido em **JavaFX/Swing**.  
- **Versão:** 1.0  
- **Licença:** GPL  

## **RNF06 - Compatibilidade**
- **Descrição:** O sistema deve funcionar em **Windows** sem necessidade de configurações avançadas.  
- **Detalhes do Recurso/Tecnologia:** Desenvolvimento em **Java**, compatível com distribuições modernas do **JRE**. Conexão ao banco de dados **MySQL gerenciado via phpMyAdmin**.  
- **Versão:** 1.0  
- **Licença:** GPL  
