require_relative "credit_card_payment"
require_relative "pix_payment"
require_relative "boleto_payment"

class PaymentProcessor
  def initialize(strategy)
    @strategy = strategy
  end

  def process(amount)
    @strategy.pay(amount)
  end
end

credit_card_processor = PaymentProcessor.new(CreditCardPayment.new)
credit_card_processor.process(100)

pix_processor = PaymentProcessor.new(PixPayment.new)
pix_processor.process(200)

boleto_processor = PaymentProcessor.new(BoletoPayment.new)
boleto_processor.process(300)
