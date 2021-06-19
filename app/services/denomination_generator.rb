class DenominationGenerator
  attr_accessor :amount, :output

  DENOMINATIONS = { quarters: 25, dimes: 10, nickels: 5, pennies: 1 }

  def initialize amount
    @amount = amount
    @output = {}
  end

  def make_change
    return output, 400, "Bad Request/422" if amount <= 0

    DENOMINATIONS.each do |denomination, denomination_value|
      coins_qty = amount / denomination_value
      next if coins_qty.zero?
      @amount -= (coins_qty * denomination_value)
      @output[denomination] = coins_qty
      break if amount <= 0
    end

    return output, 200, "OK"
  end
end