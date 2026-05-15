require_relative "payment_strategy"

class BoletoPayment < PaymentStrategy
  def pay(amount)
    puts "Processing boleto payment of $#{amount}"
  end
end
