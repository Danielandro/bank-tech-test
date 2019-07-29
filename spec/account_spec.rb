require 'account'

describe Account do
  subject(:account) { described_class.new }
  
  it 'an account can be instantiated' do
    expect(account).not_to be(nil)
  end
end
