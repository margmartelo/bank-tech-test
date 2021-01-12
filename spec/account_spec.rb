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

  it 'allows to withdraw a specific amount from account if balance is enough' do
    account = Account.new
    account.deposit(100)
    account.withdraw(50)
    expect(account.balance).to eq 50
  end

  it 'raises an error if trying to withdraw an amount superior to balance' do
    account = Account.new
    account.deposit(100)
    expect { account.withdraw(150) }.to raise_error("Insufficient funds to complete this transaction.")
  end
end
