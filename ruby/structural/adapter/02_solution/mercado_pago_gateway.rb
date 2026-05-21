module AdapterPattern
  module Solution
    class MercadoPagoGateway
      def process_payment(data)
        puts "Mercado Pago payment processed: $#{data[:amount]}"
      end
    end
  end
end
