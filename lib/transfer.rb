class Transfer
  attr_accessor :sendor, :receiver, :amount, :status 

  def initialize(name1, name2, amount)
    @name1 = name1
    @name2 = name2
    @amount = amount
    @status = "pending"
  end
end
