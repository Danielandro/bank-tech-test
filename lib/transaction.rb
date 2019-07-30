class Transaction

  attr_reader :credit, :debit, :balance, :time
  def initialize(credit: 0, debit: 0, balance:, time: Time)
    @time = time.new
    @credit = credit
    @debit = debit
    @balance = balance
  end
  
end
