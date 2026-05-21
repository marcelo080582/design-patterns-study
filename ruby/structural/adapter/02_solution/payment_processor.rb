module AdapterPattern
  module Solution
    class PaymentProcessor
      def initialize(gateway)
        @gateway = gateway
      end

      def process(amount)
        @gateway.pay(amount)
      end
    end
  end
end
