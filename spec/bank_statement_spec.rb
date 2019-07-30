require 'bank_statement'

describe BankStatement do

  describe '#print_statment' do
    it 'returns a formatted statement' do
      one_day_in_seconds = 86400
      time1 = Time.now.strftime("%d/%m/%Y")
      time2 = (Time.now - one_day_in_seconds).strftime("%d/%m/%Y")
      time3 = (Time.now - (one_day_in_seconds * 2)).strftime("%d/%m/%Y")
      transaction1 = double('transaction', credit: 300, debit: 0, balance: 300, time: time3)
      transaction2 = double('transaction', credit: 0, debit: 100, balance: 200, time: time2)
      transaction3 = double('transaction', credit: 150, debit: 0, balance: 350, time: time1)
      transaction_history = [transaction1, transaction2, transaction3]
      bank_statement = BankStatement.new(transaction_history)

      formatted_statement = 
      "date || credit || debit || balance\n#{time1} || 150.00 || || 350.00\n#{time2} || || 100.00 || 200.00\n#{time3} || 300.00 || || 300.00"

      puts formatted_statement
      expect { bank_statement.print_statement }.to output(formatted_statement).to_stdout     
    end
  end
end
