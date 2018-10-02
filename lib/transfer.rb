class Transfer
  attr_accessor :sendor, :receiver, :amount, :status

  def initialize(sendor, receiver, amount)
    @sendor = sendor
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end
end
