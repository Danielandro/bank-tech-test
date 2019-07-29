require 'account'

describe Account do
  subject(:account) { described_class.new }

  it 'an account can be instantiated' do
    expect(account).not_to be(nil)
  end

  it 'account has a balance of 0 when created' do
    expect(account.balance).to eq(0)
  end
end
