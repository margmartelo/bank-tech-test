# frozen_string_literal: true

require 'account'
require 'transaction'
# rubocop:disable LineLength
describe Formatter do
  let(:formatter) { Formatter.new }
  let(:transaction1) { Transaction.new(Transaction::CREDIT, 100, 1000, '11/01/2021') }
  let(:transaction2) { Transaction.new(Transaction::DEBIT, 50, 950, '12/01/2021') }
  let(:transactions) { [transaction1, transaction2] }

  describe 'print statement functionality' do
    it 'prints transactions in reverse chronological order' do
      expect { formatter.print_statement(transactions) }.to output("Date || Credit || Debit || Balance\n12/01/2021 ||  || 50.00 || 950.00\n11/01/2021 || 100.00 ||  || 1000.00\n").to_stdout
    end
  end
  # rubocop:enable LineLength
end
