module DecoratorPattern
  module Problem
    class Product
      attr_reader :name, :price

      def initialize(name, price)
        @name = name
        @price = price
      end

      def formatted_price
        format("$%.2f", price)
      end

      def discounted_price
        discounted = price - (price * 0.10)

        format("$%.2f", discounted)
      end

      def promotional_badge
        "🔥 PROMOTION"
      end
    end
  end
end
