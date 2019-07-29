require 'transaction'

describe Transaction do
  describe 'When instatiated' do
    it 'takes a balance amount' do
      transaction = Transaction.new(balance: 10)
      expect(transaction.balance).to eq(10)
    end
    
    it 'has default credit of 0' do
      transaction = Transaction.new(balance: 10)
      expect(transaction.credit).to eq(0)
    end

    it 'has default debit of 0' do
      transaction = Transaction.new(balance: 10)
      expect(transaction.debit).to eq(0)
    end
  end
end
