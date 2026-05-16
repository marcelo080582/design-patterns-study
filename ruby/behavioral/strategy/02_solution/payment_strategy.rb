module StrategyPattern
  module Solution
    class PaymentStrategy
      def pay(_amount)
        raise NotImplementedError, "Subclasses must implement the pay method"
      end
    end
  end
end
