require_relative "payment_strategy"

module StrategyPattern
  module Solution
    class PixPayment < PaymentStrategy
      def pay(amount)
        puts "Processing pix payment of $#{amount}"
      end
    end
  end
end
