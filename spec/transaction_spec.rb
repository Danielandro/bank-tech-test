require 'transaction'

describe Transaction do
  describe 'When instantiated' do
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

    it 'saves the date of the transaction in dd/mm/yyyy format' do
      current_time = Time.now
      formatted_time = current_time.strftime('%d/%m/%Y')
      allow(Time).to receive(:new) { current_time }
      new_transaction = Transaction.new(balance: 10)

      expect(new_transaction.time).to eq(formatted_time)
    end
  end
end
