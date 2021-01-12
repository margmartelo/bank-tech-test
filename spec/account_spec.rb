require 'account'

describe Account do
  it 'sets the balance of a new account to zero' do
    account = Account.new
    expect(account.balance).to eq 0
  end
end
