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
   if @sender.valid? && previous_amount != self.amount && @sender.balance - self.amount >= 0
      @receiver.balance += self.amount
      @sender.balance -= self.amount
      self.status = "complete"
      previous_amount = self.amount
    else
      @status = "rejected"
     "Transaction rejected. Please check your account balance."
   end
  end

  def reverse_transfer
    if self.status = "complete"
      @receiver.balance -= self.amount
      @sender.balance += self.amount
    end
  end 

end
