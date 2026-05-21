require "spec_helper"

require_relative "../../../ruby/structural/adapter/02_solution/payment_processor"

require_relative "../../../ruby/structural/adapter/02_solution/stripe_adapter"
require_relative "../../../ruby/structural/adapter/02_solution/paypal_adapter"
require_relative "../../../ruby/structural/adapter/02_solution/mercado_pago_adapter"

RSpec.describe AdapterPattern::Solution::PaymentProcessor do
  describe "#process" do
    it "processes stripe payments" do
      gateway = AdapterPattern::Solution::StripeAdapter.new

      processor = described_class.new(gateway)

      expect do
        processor.process(100)
      end.to output(
        "Stripe payment processed: $100\n"
      ).to_stdout
    end

    it "processes paypal payments" do
      gateway = AdapterPattern::Solution::PaypalAdapter.new

      processor = described_class.new(gateway)

      expect do
        processor.process(200)
      end.to output(
        "PayPal payment processed: $200\n"
      ).to_stdout
    end

    it "processes mercado pago payments" do
      gateway = AdapterPattern::Solution::MercadoPagoAdapter.new

      processor = described_class.new(gateway)

      expect do
        processor.process(300)
      end.to output(
        "Mercado Pago payment processed: $300\n"
      ).to_stdout
    end
  end
end
