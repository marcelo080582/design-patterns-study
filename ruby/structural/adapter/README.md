# Adapter Pattern

O Adapter Pattern é um padrão estrutural que permite que objetos com interfaces incompatíveis trabalhem juntos.

## Objetivo

Converter a interface de uma classe em outra interface esperada pelo cliente.

## Problema

Sistemas externos frequentemente possuem APIs diferentes.

Exemplo:

```ruby
StripeGateway.make_payment(value)
PaypalGateway.send_transaction(total)
MercadoPagoGateway.process(data)
```

Cada integração possui:
- métodos diferentes
- formatos diferentes
- contratos diferentes

Isso gera:
- alto acoplamento
- código difícil de manter
- condicionais espalhadas
- dificuldade para trocar provedores

## Solução

O Adapter encapsula as diferenças entre APIs externas e expõe uma interface padronizada.

Exemplo:

```ruby
gateway.pay(amount)
```

A aplicação passa a conhecer apenas a interface adaptada.

## Estrutura

```txt
01_problem/
02_solution/
spec/
```

## O que será estudado

- Integrações acopladas
- APIs incompatíveis
- Padronização de interfaces
- Encapsulamento de dependências externas
- Refatoração com Adapter
- Trade-offs da abstração

## Quando usar

- APIs externas incompatíveis
- bibliotecas legadas
- integrações de terceiros
- adaptação de contratos

## Quando evitar

- quando a interface já é compatível
- abstração desnecessária
- integração muito simples

## Exemplos reais

- Gateways de pagamento
- APIs externas
- SDKs
- serviços de storage
- serviços de autenticação
