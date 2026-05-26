# Decorator Pattern no Ruby on Rails

## Exemplo Real: Presenters e Draper

O Decorator Pattern é muito utilizado no Rails para adicionar comportamento de apresentação sem poluir models.

Problema comum:

```ruby
class Product < ApplicationRecord
  def formatted_price
  end

  def badge
  end

  def installment_text
  end
end
```

O model começa a acumular:
- lógica visual
- formatação
- comportamento de apresentação

Isso gera:
- Fat Models
- violação do Single Responsibility Principle
- dificuldade de manutenção

## Solução

Utilizar decorators/presenters.

Exemplo:

```ruby
class ProductPresenter
  def initialize(product)
    @product = product
  end

  def formatted_price
    "$#{@product.price}"
  end

  def promotional_badge
    "🔥 PROMOTION"
  end
end
```

Uso:

```ruby
product = Product.find(params[:id])

presenter = ProductPresenter.new(product)

presenter.formatted_price
```

## Draper

A gem Draper implementa fortemente o conceito de Decorator.

Exemplo:

```ruby
class ProductDecorator < Draper::Decorator
  delegate_all

  def formatted_price
    h.number_to_currency(object.price)
  end
end
```

## Benefícios

- models mais limpos
- separação de responsabilidades
- melhor organização de views
- reutilização de lógica visual
- baixo acoplamento

## Trade-offs

- mais objetos
- mais abstração
- excesso de decorators pode dificultar entendimento

## Outros exemplos de Decorator no Rails

- Serializers
- View Models
- API response wrappers
- JSON presenters
- Form objects
