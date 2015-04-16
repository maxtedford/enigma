require 'minitest'
require 'minitest/autorun'
require './lib/date'

class DateTest < MiniTest::Test

  def test_it_has_a_date
    numbers = Date.new("130415")
    assert_equal 130415, numbers.date
  end

  def test_it_will_return_todays_date_by_default
    numbers = Date.new()
    assert_equal (Time.now.strftime("%d%m%y")).to_i, numbers.date
  end

  def test_it_squares_the_date
    numbers = Date.new("130415")
    assert_equal 17008072225, numbers.squared
  end

  def test_it_outputs_the_last_four_digits
    numbers = Date.new("120415")
    assert_equal [2, 2, 2, 5], numbers.offsets
  end
end
