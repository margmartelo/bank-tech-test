require 'formatter'
require 'transaction'

describe Formatter do
  formatter = Formatter.new
  transactions = [
    Transaction.new("credit", 100, 1000, "12/01/2021")
  ]
  describe '#view' do
    it 'shows the account statement' do
      expect { formatter.print_statement(transactions) }.to output(
        "Date || Credit || Debit || Balance\n12/01/2021 || 100.00 ||  || 1000.00\n").to_stdout
    end
  end
end
