require 'account'

describe Account do
  it 'sets the balance of a new account to zero' do
    account = Account.new
    expect(account.balance).to eq 0
  end

  it 'allows to deposit a specific amount into account' do
    account = Account.new
    account.deposit(100)
    expect(account.balance).to eq 100  
  end
end
