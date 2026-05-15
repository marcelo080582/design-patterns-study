class PaymentStrategy
  def pay(_amount)
    raise NotImplementedError, "Subclasses must implement the pay method"
  end
end
