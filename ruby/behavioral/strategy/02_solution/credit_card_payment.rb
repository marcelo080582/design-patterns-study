require_relative "payment_strategy"

class CreditCardPayment < PaymentStrategy
  def pay(amount)
    puts "Processing credit card payment of $#{amount}"
  end
end
