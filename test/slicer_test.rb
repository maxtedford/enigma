require 'minitest'
require 'minitest/autorun'
require './lib/slicer'

class SlicerTest < MiniTest::Test

  def test_that_it_exists
    slice = Slicer.new("string")
    assert slice
  end

  def test_that_can_receive_a_string_and_output_it
    slice = Slicer.new("string")
    assert_equal "string", slice.string
  end

  def test_that_it_can_slice_an_eight_character_string_into_two_rows
    slice = Slicer.new("String!!")
    assert_equal [["S", "t", "r", "i"], ["n", "g", "!", "!"]], slice.slice
  end
end
