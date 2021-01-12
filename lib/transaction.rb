class Transaction

  attr_reader :type, :amount, :balance, :date

  def initialize(type, amount, balance, date = Time.now.strftime('%d/%m/%Y'))
    @type = type
    @amount = amount
    @balance = balance
    @date = date
  end
end
