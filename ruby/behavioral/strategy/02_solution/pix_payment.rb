require_relative "payment_strategy"

class PixPayment < PaymentStrategy
  def pay(amount)
    puts "Processing pix payment of $#{amount}"
  end
end
