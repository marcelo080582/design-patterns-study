require_relative "payment_gateway"
require_relative "paypal_gateway"

module AdapterPattern
  module Solution
    class PaypalAdapter < PaymentGateway
      def initialize
        @gateway = PaypalGateway.new
      end

      def pay(amount)
        @gateway.send_transaction(amount)
      end
    end
  end
end
