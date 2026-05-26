require_relative "product_decorator"

module DecoratorPattern
  module Solution
    class DiscountDecorator < ProductDecorator
      def discounted_price
        discounted = price - (price * 0.10)

        format("$%.2f", discounted)
      end
    end
  end
end
