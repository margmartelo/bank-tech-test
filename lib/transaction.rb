# frozen_string_literal: true

# "Missing top-level class documentation comment" offense solved!
class Transaction
  attr_reader :type, :amount, :balance, :date

  CREDIT = 'credit'
  DEBIT  = 'debit'

  def initialize(type, amount, balance, date = Time.now.strftime('%d/%m/%Y'))
    @type = type
    @amount = amount
    @balance = balance
    @date = date

    raise StandardError, 'Unknown type of transaction.' unless
      @type == CREDIT ||
      @type == DEBIT
  end
end
