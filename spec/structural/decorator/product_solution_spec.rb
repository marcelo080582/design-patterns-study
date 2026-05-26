require "spec_helper"

require_relative "../../../ruby/structural/decorator/02_solution/product"

require_relative "../../../ruby/structural/decorator/02_solution/formatted_price_decorator"
require_relative "../../../ruby/structural/decorator/02_solution/discount_decorator"
require_relative "../../../ruby/structural/decorator/02_solution/promotional_badge_decorator"

RSpec.describe DecoratorPattern::Solution::FormattedPriceDecorator do
  describe "#formatted_price" do
    it "formats the price" do
      product =
        DecoratorPattern::Solution::Product.new("Notebook", 1000)

      decorated_product = described_class.new(product)

      expect(
        decorated_product.formatted_price
      ).to eq("$1000.00")
    end
  end
end

RSpec.describe DecoratorPattern::Solution::DiscountDecorator do
  describe "#discounted_price" do
    it "applies discount to the price" do
      product =
        DecoratorPattern::Solution::Product.new("Notebook", 1000)

      decorated_product = described_class.new(product)

      expect(
        decorated_product.discounted_price
      ).to eq("$900.00")
    end
  end
end

RSpec.describe DecoratorPattern::Solution::PromotionalBadgeDecorator do
  describe "#promotional_badge" do
    it "returns promotional badge" do
      product =
        DecoratorPattern::Solution::Product.new("Notebook", 1000)

      decorated_product = described_class.new(product)

      expect(
        decorated_product.promotional_badge
      ).to eq("🔥 PROMOTION")
    end
  end
end
