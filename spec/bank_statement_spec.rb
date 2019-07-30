require 'bank_statement'

describe BankStatement do
  describe '#format_date' do
    it 'returns date as dd/mm/yyyy' do
      time1 = Time.now
      time2 = Time.now
      transaction1 = double('transaction', credit: 30, debit: 0, balance: 30, time: time1)
      transaction2 = double('transaction', credit: 0, debit: 10, balance: 20, time: time2)
      transaction_history = [transaction1, transaction2]
      bank_statement = BankStatement.new(transaction_history)
      converted_time = time1.strftime("%d/%m/%Y")
      expect(bank_statement.format_date(transaction_history[0].time)).to eq(converted_time)
    end
  end
end
