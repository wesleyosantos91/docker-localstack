<div align="center">

![](https://img.shields.io/badge/Status-Em%20Desenvolvimento-orange)
</div>

<div align="center">

# Localstack - Steup ambiente 
![](https://img.shields.io/badge/Autor-Wesley%20Oliveira%20Santos-brightgreen)
![](https://img.shields.io/badge/Container-docker-brightgreen)
</div>

## Fundamentos teóricos

> LocalStack💻é um emulador de serviço de nuvem que é executado em um único contêiner em seu laptop ou em seu ambiente de CI. Com o LocalStack, você pode executar seus aplicativos AWS ou Lambdas inteiramente em sua máquina local sem se conectar a um provedor de nuvem remoto! Esteja você testando aplicativos CDK complexos ou configurações do Terraform, ou apenas começando a aprender sobre os serviços da AWS, o LocalStack ajuda a acelerar e simplificar seu fluxo de trabalho de teste e desenvolvimento.

## Tecnologias
- Docker

## Execução

- Scripts
  ### Executar docker-compose
    ```docker-compose -f docker-compose.yml up```
 
- Observação: 
  - Pasta init-scripts é pasta que contem os scripts que inicia a configuração das features:
    - ex:  
     ``` 
         init-script
          - 01-create-profile.sh
          - 02-scripts-dynamodb.sh
          - 03-scripts-sqs.sh
          - 04-scripts-feature-xpto.sh
     ```  
  - Pasta configs é pasta que onde contem os scripts excutados no criação das features:
    - ex:
     ``` 
         configs
          - dynamodb
            - resource
            - 1-create-resources.sh
          - sqs
            - 1-create-resources.sh
          - feature-xpt
            - resource (se necessario para complementar os scripts de criação do recurso)
            - 1-create-resources.sh
     ```
