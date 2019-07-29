class Transaction

  attr_reader :credit, :debit, :balance
  def initialize(credit = 0, debit = 0, balance:)
    # @time = Time.new.strftime("%d/%m/%Y")
    @credit = credit
    @debit = debit
    @balance = balance
  end  
end
