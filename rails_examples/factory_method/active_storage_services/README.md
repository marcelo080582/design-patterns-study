# Factory Method no Ruby on Rails

## Exemplo Real: ActiveStorage Services

O Rails utiliza o Factory Method no ActiveStorage para criar diferentes serviços de armazenamento.

Exemplos:

- Local Disk
- Amazon S3
- Google Cloud Storage

## Configuração

```ruby
config.active_storage.service = :amazon
```

ou:

```ruby
config.active_storage.service = :local
```

Com base nessa configuração, o Rails cria o service apropriado.

## Como o Factory Method aparece

O Rails encapsula a criação dos serviços de storage.

Simplificando o conceito:

```ruby
class StorageServiceFactory
  def self.build(service_name)
    case service_name
    when :local
      DiskService.new
    when :amazon
      S3Service.new
    when :google
      GCSService.new
    else
      raise "Unsupported storage service"
    end
  end
end
```

O Rails evolui essa ideia utilizando factories mais sofisticadas e classes especializadas.

## Objetivo

Permitir que o restante da aplicação utilize armazenamento sem conhecer implementações concretas.

A aplicação apenas faz:

```ruby
ActiveStorage::Blob.create_and_upload!
```

sem saber:
- se o arquivo será salvo localmente
- no S3
- no Google Cloud

## Benefícios

- baixo acoplamento
- extensibilidade
- Open/Closed Principle
- troca de implementação sem alterar código cliente

## Trade-offs

- aumento de abstração
- mais classes
- maior complexidade inicial

## Outros exemplos de Factory Method no Rails

- Database adapters
- Cache stores
- Queue adapters
- Action Mailer delivery methods
- Logger factories
