require 'transaction'

describe Transaction do
  it 'storages the balance after transaction' do
    transaction = Transaction.new("debit",100, 100)
    expect(transaction.balance).to eq 100
  end
end
