require 'transaction'

describe Transaction do
  describe 'When instatiated' do
    before :each do
      @transaction = Transaction.new(balance: 10)
    end
    
    it 'takes a balance amount' do
      expect(@transaction.balance).to eq(10)
    end
    
    it 'has default credit amount of 0' do
      expect(@transaction.credit).to eq(0)
    end

    it 'has default debit amount of 0' do
      expect(@transaction.debit).to eq(0)
    end
    
    it 'saves the date of the transaction' do
      current_time = "2019-07-30 10:01:25 +0100"
      allow(Time).to receive(:new) { current_time }

      new_transaction = Transaction.new(balance: 10, time: Time)
      expect(new_transaction.time).to eq(current_time)
    end
  end
end