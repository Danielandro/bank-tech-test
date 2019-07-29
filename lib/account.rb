class Account
  attr_reader :balance

  def initialize
    @balance = 0
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    if amount > @balance 
      raise 'Cannot withdraw. Not enough funds'      
    end   
     
    @balance -= amount
  end
end
