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

   if @sender.valid? && self.status = "pending" && self.amount < sender.balance
      @receiver.balance += self.amount
      @sender.balance -= self.amount
      self.status = "complete"
      @receiver.balance
    else
      @status = "rejected"
     "Transaction rejected. Please check your account balance."
   end
  end

  def reverse_transfer
    if self.status = "complete"
      @receiver.balance -= self.amount
      @sender.balance += self.amount
      @status = "reversed"
      @receiver.balance
    end
  end

end
