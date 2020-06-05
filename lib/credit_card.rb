class CreditCard
  attr_reader :card_number, :limit

  def initialize(card_number, limit)
    @card_number = card_number
    @limit = limit
  end

  def is_valid?
    card_digits = card_number.split('').map {|digit| digit.to_i}
    summed_digits = 0

    card_digits.each_index do |index|
     if index.even?
       summed_digits += card_digits[index] * 2 % 9
     else
       summed_digits += card_digits[index]
     end
    end

    summed_digits % 10 == 0
  end

  def last_four
    card_number.chars.reverse.take(4).reverse.join
  end

end
