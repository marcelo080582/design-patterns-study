module DecoratorPattern
  module Solution
    class ProductDecorator
      def initialize(product)
        @product = product
      end

      def name
        @product.name
      end

      def price
        @product.price
      end
    end
  end
end
