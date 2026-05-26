# Adapter Pattern no Ruby on Rails

## Exemplo Real: Gateways de Pagamento

O Adapter Pattern é extremamente utilizado em integrações externas no Rails.

Um caso muito comum é integração com gateways de pagamento:

- Stripe
- PayPal
- Mercado Pago
- Pagar.me
- Asaas

Cada gateway possui:
- APIs diferentes
- payloads diferentes
- autenticação diferente
- contratos diferentes

## Problema

Sem Adapter, a aplicação acaba acoplada às APIs externas:

```ruby
Stripe::Payment.create(amount: amount)

PaypalClient.send_transaction(total: amount)

MercadoPago.process_payment(data)
```

Isso gera:
- alto acoplamento
- condicionais espalhadas
- dificuldade para trocar provedores
- testes mais difíceis

## Solução

Criamos adapters para padronizar a interface.

Exemplo:

```ruby
gateway.pay(amount)
```

A aplicação passa a conhecer apenas:
- a interface adaptada
- e não os detalhes do provedor

## Exemplo simplificado

```ruby
class StripeAdapter
  def pay(amount)
    Stripe::Payment.create(amount: amount)
  end
end
```

```ruby
class PaypalAdapter
  def pay(amount)
    PaypalClient.send_transaction(total: amount)
  end
end
```

Uso:

```ruby
processor = PaymentProcessor.new(adapter)

processor.process(100)
```

## Benefícios

- baixo acoplamento
- isolamento de APIs externas
- facilidade para trocar provedores
- testes mais simples
- padronização

## Trade-offs

- aumento de abstração
- mais classes
- camada adicional de manutenção

## Outros exemplos de Adapter no Rails

- APIs REST externas
- SDKs de terceiros
- serviços de autenticação
- gateways de frete
- provedores de email
- integrações bancárias
- clients HTTP
