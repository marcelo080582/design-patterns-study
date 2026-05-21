require_relative "payment_gateway"
require_relative "stripe_gateway"

module AdapterPattern
  module Solution
    class StripeAdapter < PaymentGateway
      def initialize
        @gateway = StripeGateway.new
      end

      def pay(amount)
        @gateway.make_payment(amount)
      end
    end
  end
end
