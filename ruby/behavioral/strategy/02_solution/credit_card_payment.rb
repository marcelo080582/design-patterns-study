require_relative "payment_strategy"

module StrategyPattern
  module Solution
    class CreditCardPayment < PaymentStrategy
      def pay(amount)
        puts "Processing credit card payment of $#{amount}"
      end
    end
  end
end
