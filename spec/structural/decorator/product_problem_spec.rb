require "spec_helper"

require_relative "../../../ruby/structural/decorator/01_problem/product"

RSpec.describe DecoratorPattern::Problem::Product do
  describe "#formatted_price" do
    it "formats the price" do
      product = described_class.new("Notebook", 1000)

      expect(product.formatted_price).to eq("$1000.00")
    end
  end

  describe "#discounted_price" do
    it "applies discount to the price" do
      product = described_class.new("Notebook", 1000)

      expect(product.discounted_price).to eq("$900.00")
    end
  end

  describe "#promotional_badge" do
    it "returns promotional badge" do
      product = described_class.new("Notebook", 1000)

      expect(product.promotional_badge).to eq("🔥 PROMOTION")
    end
  end
end
