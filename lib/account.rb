class Account
  attr_reader :balance

  def initialize
    @balance = 0
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)    
    raise 'Cannot withdraw. Not enough funds' if not_enough_funds?(amount)
    
    @balance -= amount
  end

  private

  def not_enough_funds?(amount)
    amount > @balance
  end
end
