card_number = "5541808923795240"

# Your Luhn Algorithm Here
#create array of digits
card_digits = card_number.split('').map {|digit| digit.to_i}
summed_digits = 0

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



# Output
## If it is valid, print "The number [card number] is valid!"
## If it is invalid, print "The number [card number] is invalid!"
