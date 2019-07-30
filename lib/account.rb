require 'transaction'

class Account
  attr_reader :balance
  attr_reader :transaction_history

  def initialize(transaction = Transaction)
    @balance = 0
    @transaction_history = []
    @transaction = transaction
  end

  def deposit(amount)
    @balance += amount
    transaction_history << @transaction.new(credit: amount, balance: @balance)
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
