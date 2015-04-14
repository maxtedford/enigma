require 'minitest'
require 'minitest/autorun'
require './lib/adder'

class AdderTest < MiniTest::Test

  def test_it_can_output_the_key
    adder = Adder.new(["12", "23", "34", "45"],"2225")
    assert_equal ["12", "23", "34", "45"], adder.key
  end

  def test_it_can_output_the_date
    adder = Adder.new(["12", "23", "34", "45"],"2225")
    assert_equal "2225", adder.date
  end

  def test_it_can_output_the_date_as_an_array
    adder = Adder.new(["12", "23", "34", "45"],"2225")
    assert_equal ["2", "2", "2", "5"], adder.array_that_date
  end

  def test_it_can_convert_the_date_array_to_integers
    adder = Adder.new(["12", "23", "34", "45"],"2225")
    assert_equal [2, 2, 2, 5], adder.integer_that_date
  end

  def test_it_can_convert_the_key_array_to_integers
    adder = Adder.new(["12", "23", "34", "45"],"2225")
    assert_equal [12, 23, 34, 45], adder.integer_that_key
  end

  def test_it_can_zip_the_two_arrays_together
    adder = Adder.new(["12", "23", "34", "45"],"2225")
    adder.integer_that_date
    adder.integer_that_key
    assert_equal [[12, 2], [23, 2], [34, 2], [45, 5]], adder.zip_that_ish
  end

  def test_it_can_output_the_sums_of_zipped_array
    adder = Adder.new(["12", "23", "34", "45"],"2225")
    adder.integer_that_date
    adder.integer_that_key
    adder.zip_that_ish
    assert_equal [14, 25, 36, 50], adder.add_the_zip
  end
end
