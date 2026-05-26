require_relative "product_decorator"

module DecoratorPattern
  module Solution
    class FormattedPriceDecorator < ProductDecorator
      def formatted_price
        format("$%.2f", price)
      end
    end
  end
end
