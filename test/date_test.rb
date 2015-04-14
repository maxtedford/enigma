require 'minitest'
require 'minitest/autorun'
require './lib/date'

class DateTest < MiniTest::Test

  def test_it_has_a_date
    numbers = Date.new("130415")
    assert_equal "130415", numbers.date
  end

  def test_whether_input_is_valid
    numbers = Date.new("stringies")
    assert_equal "Cannot proceed. Please enter a six-digit number as a string in DDMMYY format", numbers.valid?

    numbers = Date.new(130415)
    assert_equal "You have entered a valid date", numbers.valid?
  end

  def test_it_squares_the_date
    numbers = Date.new("130415")
    assert_equal 17008072225, numbers.squared
  end

  def test_it_outputs_the_last_four_digits
    numbers = Date.new("120415")
    assert_equal "2225", numbers.get_last_four
  end
end
