module AdapterPattern
  module Solution
    class StripeGateway
      def make_payment(amount)
        puts "Stripe payment processed: $#{amount}"
      end
    end
  end
end
