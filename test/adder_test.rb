require 'minitest'
require 'minitest/autorun'
require './lib/adder'
require './lib/key'
require './lib/date'

class AdderTest < MiniTest::Test

  def test_it_can_output_the_offset
    adder = Adder.new(Key.new("12345").offsets,Date.new("130415").date)
    assert_equal [12, 23, 34, 45], adder.key
  end

  def test_it_can_output_the_date
    adder = Adder.new(Key.new("12345").offsets,Date.new("130415").date)
    assert_equal 130415, adder.date
  end

  def test_it_can_sum_up_the_outputs
    adder = Adder.new(Key.new("12345"),Date.new("130415"))
    adder.offsets
    assert_equal [14, 25, 36, 50], adder.offsets
  end
end
