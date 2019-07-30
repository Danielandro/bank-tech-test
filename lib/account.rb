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
    add_transaction_record('credit', amount)
  end

  def withdraw(amount)
    raise 'Cannot withdraw. Not enough funds' if not_enough_funds?(amount)

    @balance -= amount
    add_transaction_record('debit', amount)
  end

  private

  def not_enough_funds?(amount)
    amount > @balance
  end

  def add_transaction_record(type, amount)
    if type == 'credit'
      transaction_history << @transaction.new(credit: amount, balance: @balance)
    else
      transaction_history << @transaction.new(debit: amount, balance: @balance)
    end
  end
end
