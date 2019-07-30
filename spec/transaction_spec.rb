require 'transaction'

describe Transaction do
  describe 'When instatiated' do
    it 'takes a balance amount' do
      transaction = Transaction.new(balance: 10)
      expect(transaction.balance).to eq(10)
    end
    
    it 'has default credit amount of 0' do
      transaction = Transaction.new(balance: 10)
      expect(transaction.credit).to eq(0)
    end

    it 'has default debit amount of 0' do
      transaction = Transaction.new(balance: 10)
      expect(transaction.debit).to eq(0)
    end
    
    it 'saves the date of the transaction' do
      current_time = "2019-07-30 10:01:25 +0100"
      allow(Time).to receive(:new) { current_time }

      transaction = Transaction.new(balance: 10, time: Time)
      expect(transaction.time).to eq(current_time)
    end
  end
end