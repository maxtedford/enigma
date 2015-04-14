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
    assert_equal ["2", "2", "2", "5"], adder.array_that_ish
  end


end
