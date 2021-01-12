require_relative './transaction'

class Account

  attr_reader :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(amount)
    @balance += amount
    deposit_trans = Transaction.new("credit", amount, @balance)
    @transactions.push(deposit_trans)
  end

  def withdraw(amount)
    if amount <= @balance
      @balance -= amount
      withdrawal_trans = Transaction.new("debit", amount, @balance)
      @transactions.push(withdrawal_trans)
    else
      raise StandardError.new("Insufficient funds to complete this transaction.")
    end
  end
end
