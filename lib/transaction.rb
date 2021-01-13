# frozen_string_literal: true

# "Missing top-level class documentation comment" offense solved!
class Transaction
  attr_reader :type, :amount, :balance, :date

  def initialize(type, amount, balance, date = Time.now.strftime('%d/%m/%Y'))
    @type = type
    @amount = amount
    @balance = balance
    @date = date

    # rubocop:disable LineLength
    raise StandardError, 'Unknown type of transaction.' unless @type == 'credit' || @type == 'debit'
    # rubocop:enable LineLength
  end
end
