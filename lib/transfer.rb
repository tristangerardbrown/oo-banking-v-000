class Transfer
  attr_accessor :sender, :receiver, :amount, :status, :balance 

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
    sender.valid? && receiver.valid?
  end

  def execute_transaction

    previous_amount = 0
   if @sender.valid? && previous_amount != @amount && @sender.balance - @amount >= 0
      @receiver.balance += amount
      @sender.balance -= amount
      self.status = "complete"
      previous_amount = @amount
    else
      @status = "rejected"
     "Transaction rejected. Please check your account balance."
   end
  end
end
