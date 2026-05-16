require "spec_helper"

require_relative "../../../ruby/behavioral/strategy/02_solution/payment_processor"
require_relative "../../../ruby/behavioral/strategy/02_solution/credit_card_payment"
require_relative "../../../ruby/behavioral/strategy/02_solution/pix_payment"
require_relative "../../../ruby/behavioral/strategy/02_solution/boleto_payment"

RSpec.describe StrategyPattern::Solution::PaymentProcessor do
  describe "#process" do
    it "processes credit card payments" do
      processor = described_class.new(StrategyPattern::Solution::CreditCardPayment.new)

      expect do
        processor.process(100)
      end.to output(
        "Processing credit card payment of $100\n"
      ).to_stdout
    end

    it "processes pix payments" do
      processor = described_class.new(StrategyPattern::Solution::PixPayment.new)

      expect do
        processor.process(200)
      end.to output(
        "Processing pix payment of $200\n"
      ).to_stdout
    end

    it "processes boleto payments" do
      processor = described_class.new(StrategyPattern::Solution::BoletoPayment.new)

      expect do
        processor.process(300)
      end.to output(
        "Processing boleto payment of $300\n"
      ).to_stdout
    end
  end
end
