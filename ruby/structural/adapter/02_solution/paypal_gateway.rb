module AdapterPattern
  module Solution
    class PaypalGateway
      def send_transaction(value)
        puts "PayPal payment processed: $#{value}"
      end
    end
  end
end
