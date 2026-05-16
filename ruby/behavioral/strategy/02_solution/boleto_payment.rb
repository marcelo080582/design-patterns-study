require_relative "payment_strategy"

module StrategyPattern
  module Solution
    class BoletoPayment < PaymentStrategy
      def pay(amount)
        puts "Processing boleto payment of $#{amount}"
      end
    end
  end
end
