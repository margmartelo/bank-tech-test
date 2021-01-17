# frozen_string_literal: true

require_relative './transaction'
require_relative './formatter'
# "Missing top-level class documentation comment" offense solved!
class Account
  attr_reader :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
    @formatter = Formatter.new
  end

  def deposit(amount)
    @balance += amount
    deposit_trans = Transaction.new(Transaction::CREDIT, amount, @balance)
    @transactions.push(deposit_trans)
  end

  def withdraw(amount)
    # rubocop:disable LineLength
    raise StandardError, 'Insufficient funds to complete this transaction.' unless amount <= @balance

    # rubocop:enable LineLength
    @balance -= amount
    withdrawal_trans = Transaction.new(Transaction::DEBIT, amount, @balance)
    @transactions.push(withdrawal_trans)
  end

  def print_statement
    @formatter.print_statement(@transactions)
  end
end
