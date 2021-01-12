require 'transaction'

describe Transaction do

  let(:transaction1) { Transaction.new("debit",100, 100) }
  it 'storages the balance after transaction' do
    expect(transaction1.balance).to eq 100
  end

  let(:transaction2) { Transaction.new("debit",100, 100, "11/03/2020") }
  it 'can be instantiated with a provided date' do
    expect(transaction2.date).to eq "11/03/2020"
  end

  let(:transaction1) { Transaction.new("debit",100, 100) }
  let(:time) { Time.now.strftime('%d/%m/%Y') }
  it 'will assume current date by default if date not provided' do
    expect(transaction1.date).to eq time
  end

  let(:transaction3) { Transaction.new("other",100, 0) }
  it 'raises an error if type of transaction is neither credit or debit' do
    expect { transaction3 }.to raise_error("Unknown type of transaction.")
  end

  let(:transaction4) { Transaction.new("credit",100, 100) }
  it 'storages a deposit as a credit type of transaction' do
    expect(transaction4).to be_an_instance_of(Transaction)
  end

  let(:transaction1) { Transaction.new("debit",100, 100) }
  it 'storages a withdrawal as a debit type of transaction' do
    expect(transaction1).to be_an_instance_of(Transaction)
  end

end
