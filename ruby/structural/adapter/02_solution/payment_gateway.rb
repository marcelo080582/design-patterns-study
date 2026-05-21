module AdapterPattern
  module Solution
    class PaymentGateway
      def pay(_amount)
        raise NotImplementedError,
              "Subclasses must implement pay"
      end
    end
  end
end
