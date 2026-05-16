require "spec_helper"

require_relative "../../../ruby/behavioral/strategy/01_problem/payment_processor"

RSpec.describe PaymentProcessor do
  describe "#process" do
    it "processes credit card payments" do
      processor = described_class.new

      expect do
        processor.process(:credit_card, 100)
      end.to output(
        "Processing credit card payment of $100\n"
      ).to_stdout
    end

    it "processes pix payments" do
      processor = described_class.new

      expect do
        processor.process(:pix, 200)
      end.to output(
        "Processing pix payment of $200\n"
      ).to_stdout
    end

    it "processes boleto payments" do
      processor = described_class.new

      expect do
        processor.process(:boleto, 300)
      end.to output(
        "Processing boleto payment of $300\n"
      ).to_stdout
    end

    it "raises an error for unsupported payment types" do
      processor = described_class.new

      expect do
        processor.process(:bitcoin, 500)
      end.to raise_error("Unsupported payment type")
    end
  end
end
