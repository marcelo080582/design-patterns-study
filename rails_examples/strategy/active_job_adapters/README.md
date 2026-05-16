# Strategy Pattern no Ruby on Rails

## Exemplo Real: ActiveJob Queue Adapters

O Rails utiliza o Strategy Pattern no ActiveJob através dos adapters de fila.

Quando executamos:

```ruby
MyJob.perform_later
```

o Rails delega a execução para um adapter configurado.

Exemplos:

- Sidekiq
- Resque
- Delayed Job
- Solid Queue

## Configuração

```ruby
config.active_job.queue_adapter = :sidekiq
```

ou:

```ruby
config.active_job.queue_adapter = :resque
```

## Como o Strategy aparece

O Rails define uma interface comum para os adapters.

Cada adapter implementa seu próprio comportamento:

```ruby
enqueue(job)
```

O ActiveJob não precisa saber:
- como o Sidekiq funciona
- como o Resque funciona
- como o Solid Queue funciona

Ele apenas delega para a estratégia configurada.

## Estrutura conceitual simplificada

```ruby
class ActiveJob
  def initialize(adapter)
    @adapter = adapter
  end

  def perform(job)
    @adapter.enqueue(job)
  end
end
```

Estratégias concretas:

```ruby
class SidekiqAdapter
  def enqueue(job)
    # envia para o Sidekiq
  end
end

class ResqueAdapter
  def enqueue(job)
    # envia para o Resque
  end
end
```

## Benefícios

- baixo acoplamento
- troca de comportamento em runtime
- Open/Closed Principle
- facilidade de extensão

## Trade-offs

- aumento no número de classes
- abstração adicional
- pode ser exagero em cenários simples

## Outros exemplos de Strategy no Rails

- Cache stores
- Storage services (ActiveStorage)
- Authentication providers
- Payment gateways
- Serializers
