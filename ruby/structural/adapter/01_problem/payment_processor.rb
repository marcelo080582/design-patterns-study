module AdapterPattern
  module Problem
    class StripeGateway
      def make_payment(amount)
        puts "Stripe payment processed: $#{amount}"
      end
    end

    class PaypalGateway
      def send_transaction(value)
        puts "PayPal payment processed: $#{value}"
      end
    end

    class MercadoPagoGateway
      def process_payment(data)
        puts "Mercado Pago payment processed: $#{data[:amount]}"
      end
    end

    class PaymentProcessor
      def process(gateway_type, amount)
        if gateway_type == :stripe
          gateway = StripeGateway.new
          gateway.make_payment(amount)

        elsif gateway_type == :paypal
          gateway = PaypalGateway.new
          gateway.send_transaction(amount)

        elsif gateway_type == :mercado_pago
          gateway = MercadoPagoGateway.new
          gateway.process_payment(amount: amount)

        else
          raise "Unsupported gateway"
        end
      end
    end
  end
end
