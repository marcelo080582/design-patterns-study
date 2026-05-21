require "spec_helper"

require_relative "../../../ruby/structural/adapter/01_problem/payment_processor"

RSpec.describe AdapterPattern::Problem::PaymentProcessor do
  describe "#process" do
    it "processes stripe payments" do
      processor = described_class.new

      expect do
        processor.process(:stripe, 100)
      end.to output(
        "Stripe payment processed: $100\n"
      ).to_stdout
    end

    it "processes paypal payments" do
      processor = described_class.new

      expect do
        processor.process(:paypal, 200)
      end.to output(
        "PayPal payment processed: $200\n"
      ).to_stdout
    end

    it "processes mercado pago payments" do
      processor = described_class.new

      expect do
        processor.process(:mercado_pago, 300)
      end.to output(
        "Mercado Pago payment processed: $300\n"
      ).to_stdout
    end

    it "raises an error for unsupported gateways" do
      processor = described_class.new

      expect do
        processor.process(:unknown, 100)
      end.to raise_error("Unsupported gateway")
    end
  end
end
