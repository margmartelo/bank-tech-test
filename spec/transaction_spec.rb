require 'transaction'

describe Transaction do
  it 'storages the balance after transaction' do
    transaction = Transaction.new("debit",100, 100)
    expect(transaction.balance).to eq 100
  end

  it 'can be instantiated with a provided date' do
    transaction = Transaction.new("debit",100, 100, 11/03/2020)
    expect(transaction.date).to eq 11/03/2020
  end

  it 'will assume current date by default if date not provided' do
    transaction = Transaction.new("debit",100, 100)
    @time_now = Time.now.strftime('%d/%m/%Y')
    expect(transaction.date).to eq @time_now
  end

end
