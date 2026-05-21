# Factory Method Pattern

O Factory Method é um padrão criacional que define uma interface para criação de objetos, permitindo que subclasses decidam qual classe concreta será instanciada.

## Objetivo

Desacoplar a criação de objetos do código cliente.

## Problema

Imagine um sistema de notificações que precisa enviar mensagens por diferentes canais:

- Email
- SMS
- Push Notification

Uma implementação inicial normalmente possui condicionais para decidir qual objeto criar:

```ruby
if type == :email
  EmailNotification.new
elsif type == :sms
  SmsNotification.new
```

Conforme o sistema cresce:
- novas notificações exigem alterações no código existente
- aumenta o acoplamento
- a lógica de criação se espalha pelo sistema
- viola o Open/Closed Principle

## Solução

O Factory Method encapsula a criação dos objetos em creators/factories especializados.

Assim:
- o código cliente deixa de conhecer implementações concretas
- novas notificações podem ser adicionadas sem alterar código existente
- a criação de objetos fica centralizada e extensível

## Estrutura

```txt
01_problem/
02_solution/
spec/
```

## O que será estudado

- Problema inicial
- Acoplamento na criação de objetos
- Refatoração utilizando Factory Method
- Encapsulamento de criação
- Open/Closed Principle
- Polimorfismo
- Diferença entre:
  - Simple Factory
  - Factory Method
  - Abstract Factory
- Trade-offs da abstração

## Quando usar

- Quando a criação de objetos se torna complexa
- Quando o código cliente não deveria conhecer implementações concretas
- Quando novas implementações são adicionadas frequentemente
- Quando deseja reduzir acoplamento

## Quando evitar

- Quando a criação dos objetos é simples
- Quando poucas implementações existem
- Quando a abstração adiciona complexidade desnecessária

## Exemplo real em Rails

Exemplos comuns:

- ActiveRecord adapters
- Cache stores
- Queue adapters
- Storage services
- Serializers
- API clients
