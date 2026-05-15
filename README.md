# Design Patterns Study

Repositório de estudos sobre Design Patterns utilizando Ruby e Ruby on Rails.

## Objetivos

- Entender o problema antes do pattern
- Aprender abstrações e trade-offs
- Praticar código limpo e manutenível
- Aplicar patterns utilizando Ruby e Rails
- Desenvolver exemplos práticos baseados em cenários reais

## Estrutura do Projeto

### `ruby/`

Implementações utilizando Ruby puro para focar nos conceitos fundamentais dos patterns sem dependências de framework.

```txt
ruby/
├── creational/
├── structural/
└── behavioral/
```

### `rails_examples/`

Exemplos práticos utilizando Ruby on Rails para demonstrar como os patterns aparecem em aplicações reais.

```txt
rails_examples/
```

## Estrutura dos Patterns

Cada pattern possui:

```txt
pattern_name/
├── README.md
├── 01_problem/
├── 02_solution/
└── spec/
```

### Organização

#### `01_problem/`

Implementação inicial com problemas de design, acoplamento ou manutenção.

#### `02_solution/`

Refatoração aplicando o Design Pattern.

#### `spec/`

Testes automatizados utilizando RSpec.

## Tecnologias Utilizadas

- Ruby 3.2.x
- Ruby on Rails
- RSpec
- Rubocop

## Objetivo de Aprendizado

O foco deste repositório não é apenas implementar patterns, mas compreender:

- Qual problema o pattern resolve
- Quando utilizar
- Quando evitar
- Custos e benefícios da abstração
- Trade-offs de arquitetura

## Patterns Planejados

### Creational

- Factory Method
- Abstract Factory
- Builder
- Singleton

### Structural

- Adapter
- Decorator
- Facade
- Proxy

### Behavioral

- Strategy
- Observer
- Command
- Template Method
- Chain of Responsibility

## Exemplos Reais com Rails

Alguns exemplos planejados:

- ActiveJob adapters → Strategy
- Service Objects → Command
- Notifications → Observer
- Presenters → Decorator
- API integrations → Adapter

## Como executar os testes

```bash
bundle exec rspec
```

## Como executar o lint

```bash
bundle exec rubocop
```
