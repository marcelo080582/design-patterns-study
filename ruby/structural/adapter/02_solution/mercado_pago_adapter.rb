require_relative "payment_gateway"
require_relative "mercado_pago_gateway"

module AdapterPattern
  module Solution
    class MercadoPagoAdapter < PaymentGateway
      def initialize
        @gateway = MercadoPagoGateway.new
      end

      def pay(amount)
        @gateway.process_payment(amount: amount)
      end
    end
  end
end
