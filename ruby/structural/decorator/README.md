# Decorator Pattern

O Decorator Pattern é um padrão estrutural que permite adicionar novos comportamentos a objetos dinamicamente sem alterar sua estrutura original.

## Objetivo

Extender funcionalidades sem modificar a classe original.

## Problema

Com o crescimento das regras de apresentação e comportamento, objetos começam a acumular responsabilidades.

Exemplo:

```ruby
class Product
  def formatted_price
  end

  def discounted_price
  end

  def promotional_badge
  end
end
```

Isso gera:
- classes grandes
- violação do Single Responsibility Principle
- acoplamento
- dificuldade de manutenção

## Solução

O Decorator encapsula comportamentos adicionais em objetos separados.

Exemplo:

```ruby
decorated_product.formatted_price
```

Assim:
- o objeto original permanece simples
- novos comportamentos podem ser adicionados dinamicamente
- responsabilidades ficam separadas

## Estrutura

```txt
01_problem/
02_solution/
spec/
```

## O que será estudado

- Acúmulo de responsabilidades
- Extensão de comportamento
- Wrappers
- Composição
- Refatoração com Decorator
- Trade-offs da abstração

## Quando usar

- regras de apresentação
- formatação
- enriquecimento de objetos
- comportamento opcional
- presenters/view models

## Quando evitar

- abstração desnecessária
- poucas responsabilidades
- excesso de decorators encadeados

## Exemplos reais

- Presenters
- Draper
- Serializers
- View Models
- Wrappers de APIs
