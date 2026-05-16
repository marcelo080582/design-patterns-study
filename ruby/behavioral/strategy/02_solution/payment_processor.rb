require_relative "credit_card_payment"
require_relative "pix_payment"
require_relative "boleto_payment"

module StrategyPattern
  module Solution
    class PaymentProcessor
      def initialize(strategy)
        @strategy = strategy
      end

      def process(amount)
        @strategy.pay(amount)
      end
    end
  end
end

credit_card_processor = StrategyPattern::Solution::PaymentProcessor.new(StrategyPattern::Solution::CreditCardPayment.new)
credit_card_processor.process(100)

pix_processor = StrategyPattern::Solution::PaymentProcessor.new(StrategyPattern::Solution::PixPayment.new)
pix_processor.process(200)

boleto_processor = StrategyPattern::Solution::PaymentProcessor.new(StrategyPattern::Solution::BoletoPayment.new)
boleto_processor.process(300)
