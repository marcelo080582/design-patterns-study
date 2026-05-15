class PaymentProcessor
  def process(payment_type, amount)
    if payment_type == :credit_card
      process_credit_card(amount)
    elsif payment_type == :pix
      process_pix(amount)
    elsif payment_type == :boleto
      process_boleto(amount)
    else
      raise "Unsupported payment type"
    end
  end

  private

  def process_credit_card(amount)
    puts "Processing credit card payment of $#{amount}"
  end

  def process_pix(amount)
    puts "Processing pix payment of $#{amount}"
  end

  def process_boleto(amount)
    puts "Processing boleto payment of $#{amount}"
  end
end

processor = PaymentProcessor.new

processor.process(:credit_card, 100)
processor.process(:pix, 200)
processor.process(:boleto, 300)
