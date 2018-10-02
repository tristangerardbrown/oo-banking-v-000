class BankAccount
    attr_accessor :balance, :status, :deposit
    attr_reader :name

  def initialize(name)
    @name = name
    @status = "open"
    @balance = 1000
  end

  def deposit(deposit)
    @balance += deposit
  end

  def display_balance
    "Your balance is $#{self.balance}."
  end

  def valid?
     self.balance > 0 && self.status == "open" ?
     true: false
   end

   def close_account
     self.status = "closed"
   end


end
