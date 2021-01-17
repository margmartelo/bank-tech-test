# frozen_string_literal: true

# "Missing top-level class documentation comment" offense solved...
class Formatter
  HEADER = "Date || Credit || Debit || Balance\n"

  def print_statement(transactions)
    print HEADER
    transactions.reverse.each do |transaction|
      if transaction.type == Transaction::CREDIT
        print credit_format(transaction)
      else
        print debit_format(transaction)
      end
    end
  end

  private

  def credit_format(transaction)
    # rubocop:disable LineLength
    "#{transaction.date} || #{rounding(transaction.amount)} ||  || #{rounding(transaction.balance)}\n"
  end

  def debit_format(transaction)
    "#{transaction.date} ||  || #{rounding(transaction.amount)} || #{rounding(transaction.balance)}\n"
  end
  # rubocop:enable LineLength

  def rounding(amount)
    format('%.2f' % amount)
  end
end
