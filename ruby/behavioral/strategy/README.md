# Strategy Pattern

O Strategy Pattern é um padrão comportamental que permite definir uma família de algoritmos, encapsular cada um deles e torná-los intercambiáveis.

## Objetivo

Evitar grandes estruturas condicionais (`if/else`) para comportamentos que podem variar.

## Problema

Imagine um sistema de pagamentos que precisa processar diferentes formas de pagamento:

- Cartão de crédito
- Pix
- Boleto

Uma implementação inicial geralmente cresce utilizando condicionais:

```ruby
if payment_type == :credit_card
```

Conforme o sistema cresce:
- a classe fica difícil de manter
- novas regras exigem alterações constantes
- aumenta o acoplamento
- viola o Open/Closed Principle

## Solução

O Strategy Pattern encapsula cada comportamento em uma classe separada.

Assim:
- cada estratégia possui sua própria implementação
- novos comportamentos podem ser adicionados sem alterar código existente
- os algoritmos tornam-se intercambiáveis

## Estrutura

```txt
01_problem/
02_solution/
spec/
```

## O que será estudado

- Problema inicial
- Refatoração utilizando Strategy
- Polimorfismo
- Composição
- Dependency Injection
- Open/Closed Principle
- Trade-offs da abstração
