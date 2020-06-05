require 'minitest/autorun'
require 'minitest/pride'
require './lib/credit_card'

class CreditTest < Minitest::Test
  def test_it_exists
    credit = CreditCard.new("5541808923795240", 15000)
    assert_instance_of CreditCard, credit
  end

  def test_it_has_a_card_number
    credit = CreditCard.new("5541808923795240", 15000)
    assert_equal "5541808923795240", credit.card_number
  end

  def test_it_has_a_limit
    credit = CreditCard.new("5541808923795240", 15000)
    assert_equal 15000, credit.limit
  end

  def test_if_it_is_a_valid_number
    credit = CreditCard.new("5541808923795240", 15000)
    assert_equal true, credit.is_valid?
  end

  def test_if_it_is_an_invalid_number
    credit = CreditCard.new("5541801923795240", 15000)
    assert_equal false, credit.is_valid?
  end

  def test_it_returns_last_four
    credit = CreditCard.new("5541808923795240", 15000)
    assert_equal "5240", credit.last_four
  end

end
