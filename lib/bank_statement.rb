class BankStatement
  def initialize(transaction_history)
    @transaction_history = transaction_history
  end

  def print_statement
    statement = "date || credit || debit || balance\n"
    @transaction_history.reverse.each do |transaction|
      date = transaction.time
      credit = format_value(transaction.credit)
      debit = format_value(transaction.debit)
      balance = convert_to_f(transaction.balance)

      statement += "#{date} || #{credit} || #{debit} || #{balance}\n"
    end
    statement
  end

  private

  def convert_to_f(num)
    format('%.2f', num)
  end

  def format_value(value)
    if value.zero?
      nil
    else
      convert_to_f(value)
    end
  end
end
