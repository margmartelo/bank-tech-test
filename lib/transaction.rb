class Transaction

  attr_reader :type, :amount, :balance, :date

  def initialize(type, amount, balance, date = Time.now.strftime('%d/%m/%Y'))
    @type = type
    @amount = amount
    @balance = balance
    @date = date

    if @type != 'credit' && @type != 'debit'
      raise StandardError.new("Unknown type of transaction.")
    end
  end
end
