class BankStatement
  def initialize(transaction_history)
    @transaction_history = transaction_history
  end

  def format_date(date)
    date.strftime("%d/%m/%Y")
  end
end
