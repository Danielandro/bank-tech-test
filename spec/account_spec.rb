require 'account'

describe Account do
  let(:account) { described_class.new }

  describe 'When instantiated' do
    it 'account has a balance of 0' do
      expect(account.balance).to eq(0)
    end

    it 'transction_history is empty' do
      expect(account.transaction_history).to be_empty
    end
  end

  describe '#deposit' do
    it 'amount can be added to account' do
      account.deposit(10)
      expect(account.balance).to eq(10)
    end

    it 'transaction record is added to history' do
      transaction = double('transaction')
      allow(transaction).to receive(:new) { transaction }
      account = Account.new(transaction)
      account.deposit(10)
      expect(account.transaction_history).to include(transaction)
    end

    xit 'transaction record is created with correct details' do
      current_time = "2019-07-30 10:01:25 +0100"
      allow(Time).to receive(:new) { current_time }      
      credit = 10
      debit = 0
      balance = 10

      transaction = double('transaction')
      account = Account.new(transaction)
      allow(transaction).to be_called_with(date, credit, debit, balance)
      account.deposit(credit)
      expect(transaction_history).to include(transaction)
    end
  end

  describe '#withdraw' do
    it 'amount can be withdrawn from account' do
      account.deposit(20)
      account.withdraw(10)
      expect(account.balance).to eq(10)
    end

    it 'amount cannot exceed balance' do
      expect { account.withdraw(10) }.to raise_error('Cannot withdraw. Not enough funds')
    end
  end

end
