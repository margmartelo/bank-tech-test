class Formatter

  def initialize
    @header = "Date || Credit || Debit || Balance\n"
  end

  def print_statement(transactions)
    print @header
    transactions.reverse.each do |transaction|
      if transaction.type == 'credit'
         print credit_format(transaction)
      else
         print debit_format(transaction)
      end
    end
  end

  def credit_format(transaction)
    "#{transaction.date} || #{rounding(transaction.amount)} ||  || #{rounding(transaction.balance)}\n"
  end

  def debit_format(transaction)
    "#{transaction.date} ||  || #{rounding(transaction.amount)} || #{rounding(transaction.balance)}\n"
  end

  def rounding(amount)
    '%.2f' % amount
  end


end
