require_relative "product_decorator"

module DecoratorPattern
  module Solution
    class PromotionalBadgeDecorator < ProductDecorator
      def promotional_badge
        "🔥 PROMOTION"
      end
    end
  end
end
