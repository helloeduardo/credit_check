
# Your Luhn Algorithm Here
def validate(card_number)
  #create array of digits by splitting the string into an array then turning each element to an integer
  card_digits = card_number.split('').map {|digit| digit.to_i}
  summed_digits = 0

#iterate through the array, double numbers at even indexes (every other) and subtract (modulo) 9 if it is above 10
  card_digits.each_index do |index|
   if index.even?
     summed_digits += card_digits[index] * 2 % 9
   else
     summed_digits += card_digits[index]
   end
  end

  if summed_digits % 10 == 0
    p "The number #{card_number} is valid!"
  else
    p "The number #{card_number} is invalid!"
  end
end

#will be valid
validate("5541808923795240")
validate("4024007136512380")
validate("6011797668867828")

#will be invalid
validate("5541801923795240")
validate("4024007106512380")
validate("6011797668868728")

#american express numbers
validate("342804633855673")
validate("342801633855673")


# Output
## If it is valid, print "The number [card number] is valid!"
## If it is invalid, print "The number [card number] is invalid!"
